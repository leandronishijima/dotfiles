-- Rex configuration, migrated from Herdr and Ghostty.
-- tmux and zellij were skipped by choice (Herdr is the current multiplexer).

-- Herdr (~/.config/herdr/config.toml), prefix ctrl+b
rex.bind("ctrl+b>shift+s", "client.config.reload")
rex.bind("ctrl+b>shift+r", "client.tab.rename")

-- Ghostty (~/.config/ghostty/config)
rex.bind("ctrl+p>\\", "pane.split", { direction = "right" })
rex.bind("ctrl+p>f", "pane.zoom")
rex.bind("ctrl+p>-", "pane.split", { direction = "down" })
rex.bind("ctrl+alt+l", "client.tab.next")
rex.bind("ctrl+alt+h", "client.tab.previous")
rex.bind("ctrl+p>h", "pane.focus", { direction = "left" })
rex.bind("ctrl+p>l", "pane.focus", { direction = "right" })
rex.bind("ctrl+p>j", "pane.focus", { direction = "down" })
rex.bind("ctrl+p>k", "pane.focus", { direction = "up" })
rex.bind("ctrl+n>0", "pane.balance")
