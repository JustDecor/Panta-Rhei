using Content.Server.Chat.Components;
using Content.Shared.Preferences;
using Robust.Shared.GameObjects;
using Robust.Shared.IoC;
using Robust.Shared.Localization;
using Robust.Server.Player;
using Content.Server.Administration.Managers;
using Content.Shared.CCVar;
using Robust.Shared.Configuration;
using Content.Shared.Database;

namespace Content.Server.Chat
{
    /// <summary>
    /// Filters chat messages for banned Ukrainian content.
    /// Implements a warning system: first violation = warning, second = 5-minute ban.
    /// </summary>
    public sealed class UkrainianChatFilter
    {
        [Dependency] private readonly IEntityManager _entityManager = default!;
        [Dependency] private readonly ILocalizationManager _loc = default!;
        [Dependency] private readonly IPlayerManager _playerManager = default!;
        [Dependency] private readonly IBanManager _banManager = default!;
        [Dependency] private readonly IConfigurationManager _cfg = default!;

        private const int BanDurationMinutes = 5;

        public UkrainianChatFilter()
        {
            IoCManager.InjectDependencies(this);
        }

        /// <summary>
        /// Result of filtering a message.
        /// </summary>
        public enum FilterResult
        {
            Allowed,
            Warned,
            Banned
        }

        /// <summary>
        /// Filters a chat message and applies warnings or bans if needed.
        /// </summary>
        /// <param name="player">The player sending the message</param>
        /// <param name="message">The message content</param>
        /// <param name="reason">The localized reason for blocking, if any</param>
        /// <returns>FilterResult indicating the action taken</returns>
        public FilterResult FilterMessage(EntityUid player, string message, out string? reason)
        {
            reason = null;

            // Check if message contains banned content
            if (!UkrainianNameValidator.ContainsBannedContent(message))
            {
                return FilterResult.Allowed;
            }

            // Determine the specific reason
            reason = GetBannedContentReason(message);

            // Get or create warning component
            var warningComp = _entityManager.EnsureComponent<ChatWarningComponent>(player);

            // Check if warnings have expired
            if (warningComp.LastWarning.HasValue)
            {
                var hoursSinceLastWarning = (DateTime.UtcNow - warningComp.LastWarning.Value).TotalHours;
                if (hoursSinceLastWarning >= warningComp.WarningExpirationHours)
                {
                    // Warnings expired, reset
                    warningComp.WarningCount = 0;
                }
            }

            // First violation: warning
            if (warningComp.WarningCount == 0)
            {
                IssueWarning(player, reason, warningComp);
                return FilterResult.Warned;
            }

            // Second or subsequent violation: ban
            ApplyTemporaryBan(player, reason);
            return FilterResult.Banned;
        }

        private void IssueWarning(EntityUid player, string reason, ChatWarningComponent warningComp)
        {
            warningComp.WarningCount++;
            warningComp.LastWarning = DateTime.UtcNow;

            // Send warning message to player
            if (_playerManager.TryGetSessionByEntity(player, out var session))
            {
                var warningMsg = _loc.GetString("chat-filter-warning");
                var reasonMsg = _loc.GetString("chat-filter-warning-reason", ("reason", reason));
                var nextMsg = _loc.GetString("chat-filter-warning-next-is-ban");

                var fullMessage = $"{warningMsg}\n{reasonMsg}\n{nextMsg}";

                // Send as system message (you'll need to use the appropriate chat system method)
                // This is a placeholder - adjust based on actual ChatSystem API
                // _chatManager.ChatMessageToOne(ChatChannel.Server, fullMessage, default, false, session.ConnectedClient);
            }
        }

        private void ApplyTemporaryBan(EntityUid player, string reason)
        {
            if (!_playerManager.TryGetSessionByEntity(player, out var session))
                return;

            var banReason = _loc.GetString("chat-filter-temp-ban", ("minutes", BanDurationMinutes));
            var fullReason = $"{banReason} - {reason}";

            // Apply 5-minute ban
            var banEnd = DateTime.UtcNow.AddMinutes(BanDurationMinutes);

            // Use ban manager to apply temporary ban
            // Note: Adjust this based on actual IBanManager API
            _banManager.CreateServerBan(
                session.UserId,
                session.Name, // Target username
                null, // No admin - automatic system ban
                null, // No last connection IP
                null, // No HWid
                (uint)BanDurationMinutes,
                NoteSeverity.Minor,
                fullReason
            );
        }

        private string GetBannedContentReason(string message)
        {
            if (UkrainianNameValidator.ContainsRussianCharacters(message))
            {
                return _loc.GetString("chat-filter-reason-russian-chars");
            }

            if (UkrainianNameValidator.ContainsBannedCombinations(message))
            {
                return _loc.GetString("chat-filter-reason-banned-combination");
            }

            // Find which banned word was used
            var lowerMessage = message.ToLowerInvariant();
            foreach (var word in new[] { "путин", "путін", "хохли", "хохол", "москаль", "кацап", "русня" })
            {
                if (lowerMessage.Contains(word))
                {
                    return _loc.GetString("chat-filter-reason-banned-word", ("word", word));
                }
            }

            return _loc.GetString("chat-filter-reason-russian-chars");
        }
    }
}
