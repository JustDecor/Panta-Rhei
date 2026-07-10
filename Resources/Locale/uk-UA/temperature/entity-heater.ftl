-entity-heater-setting-name =
    { $setting ->
        [off] вимкнено
        [low] низька
        [medium] середня
        [high] висока
       *[other] невідомо
    }

entity-heater-examined = Встановлено режим: { $setting ->
    [off] [color=gray]{ -entity-heater-setting-name(setting: "off") }[/color]
    [low] [color=yellow]{ -entity-heater-setting-name(setting: "low") }[/color]
    [medium] [color=orange]{ -entity-heater-setting-name(setting: "medium") }[/color]
    [high] [color=red]{ -entity-heater-setting-name(setting: "high") }[/color]
   *[other] [color=purple]{ -entity-heater-setting-name(setting: "other") }[/color]
}.
entity-heater-switch-setting = Перемкнути на режим: { -entity-heater-setting-name(setting: $setting) }
entity-heater-switched-setting = Режим перемкнено на: { -entity-heater-setting-name(setting: $setting) }.
