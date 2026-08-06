# Examine text after when they're holding something (in-hand)
comp-hands-examine = { CAPITALIZE(SUBJECT($user)) } тримає { $items }.

comp-hands-examine-empty = { CAPITALIZE(SUBJECT($user)) } нічого не тримає.

comp-hands-examine-wrapper = { PROPER($item) ->
    *[false] { INDEFINITE($item) } [color=paleturquoise]{$item}[/color]
    [true] [color=paleturquoise]{$item}[/color]
}

hands-system-blocked-by = Блокується
