local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[                                                               ]],
	[[                                                               ]],
	[[           __    __     __   __   __     __    __              ]],
	[[          /\ "-./  \   /\ \ / /  /\ \   /\ "-./  \             ]],
	[[          \ \ \-./\ \  \ \ \'/   \ \ \  \ \ \-./\ \            ]],
	[[           \ \_\ \ \_\  \ \__|    \ \_\  \ \_\ \ \_\           ]],
	[[            \/_/  \/_/   \/_/      \/_/   \/_/  \/_/           ]],
	[[                                                               ]],
	[[                                                               ]],
}

dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("n", "  New file", ":ene!<CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua<CR>"),
}

local function footer()
	return "Do One Thing, Do It Well - Unix Philosophy"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "AlphaFooter"
dashboard.section.header.opts.hl = "AlphaHeader"
dashboard.section.buttons.opts.hl = "MoreMsg"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
