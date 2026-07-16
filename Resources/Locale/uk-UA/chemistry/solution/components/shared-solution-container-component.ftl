shared-solution-container-component-on-examine-main-text = Містить [color={$color}]{$desc}[/color] {$wordedAmount}

examinable-solution-has-recognizable-chemicals = Ти впізнаєш {$recognizedString} у розчині.

examinable-solution-recognized = [color={$color}]{$chemical}[/color]

examinable-solution-on-examine-volume = The contained solution is { $fillLevel ->
    [exact] holding [color=white]{$current}/{$max}u[/color].
   *[other] [bold]{ -solution-vague-fill-level(fillLevel: $fillLevel) }[/bold].
}

examinable-solution-on-examine-volume-no-max = The contained solution is { $fillLevel ->
    [exact] holding [color=white]{$current}u[/color].
   *[other] [bold]{ -solution-vague-fill-level(fillLevel: $fillLevel) }[/bold].
}

examinable-solution-on-examine-volume-puddle = The puddle is { $fillLevel ->
    [exact] [color=white]{$current}u[/color].
    [full] huge and overflowing!
    [mostlyfull] huge and overflowing!
    [halffull] deep and flowing.
    [halfempty] very deep.
   *[mostlyempty] pooling together.
    [empty] forming multiple small pools.
}
