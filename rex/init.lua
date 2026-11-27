-- Rex configuration, migrated from Herdr and Ghostty.
-- tmux and zellij were skipped by choice (Herdr is the current multiplexer).
--
-- Herdr concepts map to Rex as: workspace -> session, tab -> tab, pane -> pane.
-- Only keys live here: Rex's init.lua doesn't take theme/UI settings yet
-- (rex.set only covers resume rules), so those are set in the app.

-- Herdr (~/.config/herdr/config.toml), prefix ctrl+b ---------------------------

-- Press ctrl+b twice to send a literal ctrl+b to the terminal.
rex.bind("ctrl+b>ctrl+b", "pane.send_key", { key = "ctrl+b" })

-- General
rex.bind("ctrl+b>shift+/", "client.palette.toggle") -- help (prefix+?)
rex.bind("ctrl+b>s", "client.settings") -- settings
rex.bind("ctrl+b>shift+s", "client.config.reload") -- reload_config
rex.bind("ctrl+b>g", "pane.go_to") -- goto
rex.bind("ctrl+b>b", "client.sidebar.toggle") -- toggle_sidebar

-- Workspaces -> sessions
rex.bind("ctrl+b>w", "session.switch") -- workspace_picker
rex.bind("ctrl+b>shift+n", "session.new") -- new_workspace
rex.bind("ctrl+b>shift+w", "session.rename") -- rename_workspace

-- Tabs
rex.bind("ctrl+b>c", "client.tab.new") -- new_tab
rex.bind("ctrl+b>shift+r", "client.tab.rename") -- rename_tab
rex.bind("ctrl+b>p", "client.tab.previous") -- previous_tab
rex.bind("ctrl+b>n", "client.tab.next") -- next_tab
rex.bind("ctrl+b>shift+x", "client.tab.close") -- close_tab
for i = 1, 9 do -- switch_tab (prefix+1..9)
	rex.bind("ctrl+b>" .. i, "client.tab.goto", { index = i })
end

-- Panes
rex.bind("ctrl+b>shift+p", "pane.rename") -- rename_pane
rex.bind("ctrl+b>e", "pane.copy_mode.enter") -- edit_scrollback (closest match)
rex.bind("ctrl+b>h", "pane.focus", { direction = "left" }) -- focus_pane_*
rex.bind("ctrl+b>j", "pane.focus", { direction = "down" })
rex.bind("ctrl+b>k", "pane.focus", { direction = "up" })
rex.bind("ctrl+b>l", "pane.focus", { direction = "right" })
rex.bind("ctrl+b>tab", "pane.focus_next") -- cycle_pane_next
rex.bind("ctrl+b>shift+tab", "pane.focus_previous") -- cycle_pane_previous
rex.bind("ctrl+b>v", "pane.split", { direction = "right" }) -- split_vertical
rex.bind("ctrl+b>-", "pane.split", { direction = "down" }) -- split_horizontal
rex.bind("ctrl+b>x", "pane.close") -- close_pane
rex.bind("ctrl+b>z", "pane.zoom") -- zoom

-- resize_mode (prefix+r): h/j/k/l or arrows resize, shift for bigger steps,
-- = balances, escape or enter leaves.
rex.mode("resize", { exclusive = true })
rex.bind("ctrl+b>r", "client.mode.enter", { name = "resize" })
for _, d in ipairs({
	{ "h", "left" },
	{ "j", "down" },
	{ "k", "up" },
	{ "l", "right" },
	{ "left", "left" },
	{ "down", "down" },
	{ "up", "up" },
	{ "right", "right" },
}) do
	rex.bind("resize/" .. d[1], "pane.resize", { direction = d[2] })
	rex.bind("resize/shift+" .. d[1], "pane.resize", { direction = d[2], amount = 15 })
end
rex.bind("resize/=", "pane.balance")
rex.bind("resize/enter", "client.mode.exit")

-- Not migrated (no Rex equivalent): detach (prefix+q), open_notification_target
-- (prefix+o), worktrees, focus_agent (prefix+cmd+1..9), switch_workspace
-- (prefix+ctrl+1..9, Rex selects sessions by ID not index), navigate mode, and
-- the reviewr / automatic-rename plugin actions (prefix+shift+d, prefix+a).

-- Ghostty (~/.config/ghostty/config) ------------------------------------------
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
