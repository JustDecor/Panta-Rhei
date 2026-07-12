analysis-console-menu-title = Широкоспектральна аналітична консоль Mark 3
analysis-console-server-list-button = Сервер
analysis-console-extract-button = Видобути очки

analysis-console-info-no-scanner = Аналізатор не підключено! Будь ласка, підключіть його за допомогою мультитула.
analysis-console-info-no-artifact = Артефакт відсутній! Розмістіть його на платформі, щоб переглянути інформацію про вузли.
analysis-console-info-ready = Системи працюють. Готово до сканування.

analysis-console-no-node = Виберіть вузол для перегляду
analysis-console-info-id = [font="Monospace" size=11]ІД:[/font]
analysis-console-info-id-value = [font="Monospace" size=11][color=yellow]{$id}[/color][/font]
analysis-console-info-class = [font="Monospace" size=11]Клас:[/font]
analysis-console-info-class-value = [font="Monospace" size=11]{$class}[/font]
analysis-console-info-locked = [font="Monospace" size=11]Статус:[/font]
analysis-console-info-locked-value = [font="Monospace" size=11][color={ $state ->
    [0] red]Заблоковано
    [1] lime]Розблоковано
    *[2] plum]Активне
}[/color][/font]
analysis-console-info-durability = [font="Monospace" size=11]Міцність:[/font]
analysis-console-info-durability-value = [font="Monospace" size=11][color={$color}]{$current}/{$max}[/color][/font]
analysis-console-info-effect = [font="Monospace" size=11]Ефект:[/font]
# DeltaV - перенесено до файлу _DV
#analysis-console-info-effect-value = [font="Monospace" size=11][color=gray]{ $state ->
#    [true] {$info}
#    *[false] Розблокуйте вузли, щоб отримати інформацію
#}[/color][/font]
analysis-console-info-trigger = [font="Monospace" size=11]Тригери:[/font]
analysis-console-info-triggered-value = [font="Monospace" size=11][color=gray]{$triggers}[/color][/font]
analysis-console-info-scanner = Сканування...
analysis-console-info-scanner-paused = Призупинено.
analysis-console-progress-text = {$seconds ->
    [one] T-{$seconds} секунда
    *[other] T-{$seconds} секунд
}

#analysis-console-extract-value = [font="Monospace" size=11][color=orange]Вузол:{$id} Дослідження:+{$value}[/color][/font]
# DeltaV - змінено analysis-console-glimmer-value - перенесено до файлу DV
#analysis-console-glimmer-value = [font="Monospace" size=11][color=orange]Вузол:{$id} Мерехтіння:+{$value}[/color][/font]
#analysis-console-extract-none = [font="Monospace" size=11][color=orange]Жоден розблокований вузол не має залишкових очок для видобутку [/color][/font]
# DeltaV - змінено analysis-console-total-research-value - перенесено до файлу DV
#analysis-console-extract-sum = [font="Monospace" size=11][color=orange]Загальне дослідження:{$value}[/color][/font]
# DeltaV - змінено analysis-console-total-glimmer-value - перенесено до файлу DV
#analysis-console-glimmer-sum = [font="Monospace" size=11][color=orange]Загальне мерехтіння:{$value}[/color][/font]
# DeltaV - змінено analysis-console-multiplier-value - перенесено до файлу DV
#analysis-console-glimmer-mult = [font="Monospace" size=11][color=orange]Поточний множник:{$value}[/color][/font]

analyzer-artifact-extract-popup = Поверхня артефакту засяяла енергією!
