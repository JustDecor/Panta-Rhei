chat-manager-entity-subtle-wrap-message = [italic][color={$color}]{ PROPER($entity) ->
    *[false] the [Name]{$entityName}[/Name] ледве помітно {$message}[/color][/italic]
     [true] [Name]{$entityName}[/Name] ледве помітно {$message}[/color][/italic]
    }

chat-manager-entity-subtle-looc-wrap-message = [italic][color=#ff7782]SOOC: [Name]{$entityName}[/Name]: {$message}[/color][/italic]

# Shows a LanguageIconTag, for use in other Fluent strings.
# Note: this has to contain both an opening tag and a closing tag, and the tag cannot be self-closing, because otherwise Robust will skip calling either BeforeText or AfterText
chat-manager-language-hint = { $language ->
    [null] {""}
    *[other] {" "}in [BubbleLanguage][color={$textColor}]{$language}[/color][/BubbleLanguage]
}

# Simple ($language) wrapper.
chat-manager-language-hint-ui = {" "}({$language})

chat-manager-language-requires-hands = You need at least one free hand to speak this language!

chat-manager-language-requires-speech = You are unable to speak right now!

# todo move this wherever it belongs
# Preferably create a separate file
chat-speech-verb-marish = маріш

chat-speech-verb-name-oldvox = Стара Кров

chat-speech-verb-oldvox-1 = крякає

chat-speech-verb-oldvox-2 = хрипить

chat-speech-verb-oldvox-3 = сичить

chat-speech-verb-oldvox-4 = клацає

chat-speech-verb-oldvox-5 = цвірінькає

chat-speech-verb-oldvox-6 = співає
