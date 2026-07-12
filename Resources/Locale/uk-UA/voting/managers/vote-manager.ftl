# Displayed as initiator of vote when no user creates the vote
ui-vote-initiator-server = Сервер

## Default.Votes

ui-vote-restart-title = Рестарт
ui-vote-restart-succeeded = Голосування за перезапуск успішне.
ui-vote-restart-failed = Голосування за перезапуск провалилось (потрібно { TOSTRING($ratio, "P0") }).
ui-vote-restart-fail-not-enough-ghost-players = Голосування за перезапуск провалено: Для ініціювання голосування за перезапуск потрібно мінімум { $ghostPlayerRequirement }% гравців-привидів. Наразі недостатньо гравців-привидів.
ui-vote-restart-yes = Так
ui-vote-restart-no = Ні
ui-vote-restart-abstain = Утриматись

ui-vote-gamemode-title = Наступний ігровий режим
ui-vote-gamemode-tie = Нічия у голосуванні! Вибираємо... { $picked }
ui-vote-gamemode-win = { $winner } виграв голосування режиму гри!

ui-vote-map-title = Наступна мапа
ui-vote-map-tie = Нічия у голосувані! Вибираємо... { $picked }
ui-vote-map-win = { $winner } виграв голосування за мапу!
ui-vote-map-notlobby = Голосування за мапу дійсне лише в лобі!
ui-vote-map-notlobby-time = Голосування за мапи дійсне лише в передраундовому лобі з { $time } залишилось!

# Голосування за вигнання гравця
ui-vote-votekick-unknown-initiator = Гравець
ui-vote-votekick-unknown-target = Невідомий гравець
ui-vote-votekick-title = { $initiator } розпочав(-ла) голосування за вигнання гравця: { $targetEntity }. Причина: { $reason }
ui-vote-votekick-yes = За
ui-vote-votekick-no = Проти
ui-vote-votekick-abstain = Утриматись
ui-vote-votekick-success = Голосування за вигнання { $target } завершилося успішно. Причина: { $reason }
ui-vote-votekick-failure = Голосування за вигнання { $target } не пройшло. Причина: { $reason }
ui-vote-votekick-not-enough-eligible = Недостатньо гравців, які можуть голосувати, щоб розпочати голосування за вигнання: { $voters }/{ $requirement }
ui-vote-votekick-server-cancelled = Голосування за вигнання { $target } було скасоване сервером.
