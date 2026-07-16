## UI
cargo-console-menu-title = Консоль подачі заявок на вантаж

cargo-console-menu-account-name-label = Назва рахунку:{" "}

cargo-console-menu-account-name-none-text = Немає

cargo-console-menu-account-name-format = [bold][color={$color}]{$name}[/color][/bold] [font="Monospace"]\[{$code}\][/font]

cargo-console-menu-shuttle-name-label = Ім'я шатла:{" "}

cargo-console-menu-shuttle-name-none-text = Немає

cargo-console-menu-points-label = Космобаксів:{" "}

cargo-console-menu-points-amount = ${$amount}

cargo-console-menu-shuttle-status-label = Статус шатлу:{" "}

cargo-console-menu-shuttle-status-away-text = Відлетів

cargo-console-menu-order-capacity-label = Обсяг замовлення:{" "}

cargo-console-menu-call-shuttle-button = Активувати телепад

cargo-console-menu-permissions-button = Дозволи

cargo-console-menu-categories-label = Категорії:{" "}

cargo-console-menu-search-bar-placeholder = Шукати

cargo-console-menu-requests-label = Заявки

cargo-console-menu-orders-label = Замовлення

cargo-console-menu-order-reason-description = Причини: {$reason}

cargo-console-menu-populate-categories-all-text = Усі

cargo-console-menu-populate-orders-cargo-order-row-product-name-text = Замовив: {$orderRequester} з [color={$accountColor}]{$account}[/color]

cargo-console-menu-cargo-order-row-approve-button = Затвердити

cargo-console-menu-cargo-order-row-cancel-button = Відмовити

cargo-console-menu-tab-title-orders = Накази

cargo-console-menu-tab-title-funds = Transfers

cargo-console-menu-account-action-transfer-limit = [bold]Transfer Limit:[/bold] ${$limit}

cargo-console-menu-account-action-transfer-limit-unlimited-notifier = [color=gold](Unlimited)[/color]

cargo-console-menu-account-action-select = [bold]Account Action:[/bold]

cargo-console-menu-account-action-amount = [bold]Amount:[/bold] $

cargo-console-menu-account-action-button = Перенести

cargo-console-menu-toggle-account-lock-button = Toggle Transfer Limit

cargo-console-menu-account-action-option-withdraw = Withdraw Cash

cargo-console-menu-account-action-option-transfer = Transfer Funds to {$code}

# Orders
cargo-console-order-not-allowed = Доступ заборонено

cargo-console-station-not-found = Немає доступної станції

cargo-console-invalid-product = Невірний ідентифікатор товару

cargo-console-too-many = Занадто багато затверджених наказів

cargo-console-snip-snip = Замовлення урізано до мінімуму

cargo-console-insufficient-funds = Недостатньо коштів (потрібно: {$cost})

cargo-console-unfulfilled = Не вистачає місця для виконання замовлення

cargo-console-trade-station = Відправлено до {$destination}

cargo-console-unlock-approved-order-broadcast = [bold]{$productName} x{$orderAmount}[/bold], який коштував [bold]{$cost}[/bold], був затверджений [bold]{$approver}[/bold]

cargo-console-fund-withdraw-broadcast = [bold]{$name} withdrew {$amount} spesos from {$name1} \[{$code1}\]

cargo-console-fund-transfer-broadcast = [bold]{$name} transferred {$amount} spesos from {$name1} \[{$code1}\] to {$name2} \[{$code2}\][/bold]

cargo-console-fund-transfer-user-unknown = Невідомо

cargo-console-paper-reason-default = Нема

cargo-console-paper-approver-default = Self

cargo-console-paper-print-name = Замовлення #{$orderNumber}

cargo-console-paper-print-text =


# Cargo shuttle console
cargo-shuttle-console-menu-title = Консоль вантажного шаттла

cargo-shuttle-console-station-unknown = Невідомо

cargo-shuttle-console-shuttle-not-found = Не знайдено

cargo-shuttle-console-organics = Виявлено органічні форми життя на шатлі

cargo-no-shuttle = Вантажний шатл не знайдено!

# Funding allocation console
cargo-funding-alloc-console-menu-title = Funding Allocation Console

cargo-funding-alloc-console-label-account = [bold]Account[/bold]

cargo-funding-alloc-console-label-code = [bold] Code [/bold]

cargo-funding-alloc-console-label-balance = [bold] Balance [/bold]

cargo-funding-alloc-console-label-cut = [bold] Revenue Division (%) [/bold]

cargo-funding-alloc-console-label-primary-cut = Cargo's cut of funds from non-lockbox sources (%):

cargo-funding-alloc-console-label-lockbox-cut = Cargo's cut of funds from lockbox sales (%):

cargo-funding-alloc-console-label-help-non-adjustible = Cargo receives {$percent}% of profits from non-lockbox sales. The rest is split as specified below:

cargo-funding-alloc-console-label-help-adjustible = Remaining funds from non-lockbox sources are distributed as specified below:

cargo-funding-alloc-console-button-save = Save Changes

cargo-funding-alloc-console-label-save-fail = [bold]Revenue Divisions Invalid![/bold] [color=red]({$pos ->
    [1] +
    *[-1] -
}{$val}%)[/color]

# Slip template
cargo-acquisition-slip-body = [head=3]Asset Detail[/head]
