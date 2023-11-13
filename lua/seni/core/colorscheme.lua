local status, _ = pcall(vim.cmd, "colorscheme tokyodark")
if not status then
	print("Colorscheme not found!")
	return
end

local default_config = {
	transparent_background = false, -- set background to transparent
	gamma = 1.00, -- adjust the brightness of the theme
	styles = {
		comments = { italic = true }, -- style for comments
		keywords = { italic = true }, -- style for keywords
		identifiers = { italic = true }, -- style for identifiers
		functions = {}, -- style for functions
		variables = {}, -- style for variables
	},
	custom_highlights = {} or function(highlights, palette)
		return {}
	end, -- extend highlights
	custom_palette = {} or function(palette)
		return {}
	end, -- extend palette
	terminal_colors = true, -- enable terminal colors
}

vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#16161E", fg = "#5E81AC" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#16161E" })
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#16161E" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "#16161E" })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "#16161E" })
