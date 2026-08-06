discord-watchlist-connection-header =

discord-watchlist-connection-entry = - {$playerName} with message "{$message}"{ $expiry ->
        [0] {""}
        *[other] {" "}(expires <t:{$expiry}:R>)
    }{ $otherWatchlists ->
        [0] {""}
        [one] {" "}and {$otherWatchlists} other watchlist
        *[other] {" "}and {$otherWatchlists} other watchlists
    }
