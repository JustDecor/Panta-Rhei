using Robust.Shared.GameObjects;

namespace Content.Server.Chat.Components
{
    /// <summary>
    /// Tracks chat warnings for a player.
    /// Used by UkrainianChatFilter to implement warning-before-ban system.
    /// </summary>
    [RegisterComponent]
    public sealed partial class ChatWarningComponent : Component
    {
        /// <summary>
        /// Number of warnings this player has received for banned content.
        /// </summary>
        [DataField("warningCount")]
        public int WarningCount { get; set; } = 0;

        /// <summary>
        /// Last time this player received a warning.
        /// </summary>
        [DataField("lastWarning")]
        public DateTime? LastWarning { get; set; } = null;

        /// <summary>
        /// Time in hours after which warnings expire and reset to 0.
        /// </summary>
        [DataField("warningExpirationHours")]
        public int WarningExpirationHours { get; set; } = 24;
    }
}
