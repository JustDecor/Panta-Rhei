chat-manager-entity-subtle-wrap-message = [italic][color=#d3d3ff]{ PROPER($entity) ->
    *[false] [Name]{$entityName}[/Name] {$message}
     [true] [Name]{$entityName}[/Name] {$message}
}[/color][/italic]

chat-manager-entity-subtle-looc-wrap-message = [italic][color=#ff7782]SOOC: [Name]{$entityName}[/Name]: {$message}[/color][/italic]

# Показує LanguageIconTag, використовується в інших рядках Fluent.
# Примітка: тут мають бути як відкривальний, так і закривальний теги, тег не може бути самозакривним, інакше Robust пропустить виклик BeforeText або AfterText
chat-manager-language-hint = { $language -> 
    [null] {""}
    *[other] {"["}langicon="{$language}"][/langicon]
}
# Простий обгортковий варіант ($language).
chat-manager-language-hint-ui = {" "}({$language})

chat-manager-language-requires-hands = Вам потрібна принаймні одна вільна рука, щоб говорити цією мовою!
chat-manager-language-requires-speech = Ви зараз не можете говорити!

# todo перемістити туди, де це має бути
# Бажано створити окремий файл
chat-speech-verb-marish = Марсіанська

chat-speech-verb-name-oldvox = Стародавня мова воксів
chat-speech-verb-oldvox-1 = каркає
chat-speech-verb-oldvox-2 = хрипить
chat-speech-verb-oldvox-3 = хекає
chat-speech-verb-oldvox-4 = клацає
chat-speech-verb-oldvox-5 = щебече
chat-speech-verb-oldvox-6 = співає
