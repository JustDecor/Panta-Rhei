using System.Text.RegularExpressions;
using Robust.Shared.IoC;
using Robust.Shared.Localization;
using Robust.Shared.Utility;

namespace Content.Shared.Preferences
{
    /// <summary>
    /// Validates character names to ensure they use only Ukrainian characters
    /// and don't contain Russian letters or banned words.
    /// </summary>
    public sealed class UkrainianNameValidator
    {
        [Dependency] private readonly ILocalizationManager _loc = default!;

        // Ukrainian alphabet with special characters
        private static readonly Regex UkrainianNameRegex = new Regex(
            @"^[А-ЩЬЮЯҐЄІЇа-щьюяґєії'\s-]+$",
            RegexOptions.Compiled
        );

        // Russian-specific characters not present in Ukrainian
        private static readonly char[] RussianChars = { 'ы', 'Ы', 'ё', 'Ё', 'э', 'Э', 'ъ', 'Ъ' };

        // Banned character combinations
        private static readonly string[] BannedCombinations = { "ьі" };

        // Banned words (loaded from config, but hardcoded defaults)
        private static readonly HashSet<string> BannedWords = new(StringComparer.OrdinalIgnoreCase)
        {
            "путин", "путін", "хохли", "хохол", "москаль", "кацап", "русня"
        };

        private const int MinNameLength = 2;
        private const int MaxNameLength = 32;

        public UkrainianNameValidator()
        {
            IoCManager.InjectDependencies(this);
        }

        /// <summary>
        /// Validates a character name for Ukrainian language requirements.
        /// </summary>
        /// <param name="name">The name to validate</param>
        /// <param name="reason">The localized reason for validation failure, if any</param>
        /// <returns>True if the name is valid, false otherwise</returns>
        public bool IsValidUkrainianName(string name, out string? reason)
        {
            reason = null;

            if (string.IsNullOrWhiteSpace(name))
            {
                reason = _loc.GetString("name-validation-too-short");
                return false;
            }

            var trimmedName = name.Trim();

            // Check length
            if (trimmedName.Length < MinNameLength)
            {
                reason = _loc.GetString("name-validation-too-short");
                return false;
            }

            if (trimmedName.Length > MaxNameLength)
            {
                reason = _loc.GetString("name-validation-too-long");
                return false;
            }

            // Check for Russian characters
            if (ContainsRussianCharacters(trimmedName))
            {
                reason = _loc.GetString("name-validation-russian-characters");
                return false;
            }

            // Check for banned combinations
            if (ContainsBannedCombinations(trimmedName))
            {
                reason = _loc.GetString("name-validation-banned-combinations");
                return false;
            }

            // Check for banned words
            if (ContainsBannedWords(trimmedName))
            {
                reason = _loc.GetString("name-validation-banned-word");
                return false;
            }

            // Check if it matches Ukrainian alphabet pattern
            if (!UkrainianNameRegex.IsMatch(trimmedName))
            {
                reason = _loc.GetString("name-validation-only-ukrainian");
                return false;
            }

            return true;
        }

        /// <summary>
        /// Checks if the text contains any Russian-specific characters.
        /// </summary>
        public static bool ContainsRussianCharacters(string text)
        {
            return text.IndexOfAny(RussianChars) >= 0;
        }

        /// <summary>
        /// Checks if the text contains any banned character combinations.
        /// </summary>
        public static bool ContainsBannedCombinations(string text)
        {
            foreach (var combination in BannedCombinations)
            {
                if (text.Contains(combination, StringComparison.OrdinalIgnoreCase))
                    return true;
            }
            return false;
        }

        /// <summary>
        /// Checks if the text contains any banned words.
        /// </summary>
        public static bool ContainsBannedWords(string text)
        {
            var lowerText = text.ToLowerInvariant();

            foreach (var bannedWord in BannedWords)
            {
                if (lowerText.Contains(bannedWord.ToLowerInvariant()))
                    return true;
            }

            return false;
        }

        /// <summary>
        /// Checks if the content (name or message) contains any banned content.
        /// Used by both name validation and chat filtering.
        /// </summary>
        public static bool ContainsBannedContent(string content)
        {
            return ContainsRussianCharacters(content) ||
                   ContainsBannedCombinations(content) ||
                   ContainsBannedWords(content);
        }
    }
}
