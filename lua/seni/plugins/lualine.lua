-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local colors = {
	blue = "#7aa2f7",
	green = "#73daca",
	violet = "#bb9af7",
	yellow = "#e0af68",
	black = "#414868",
	cyan = "#7dcfff",
	bgcolor = "#11121d",
	darkerblack = "#0b0a10",
}

local bubbles_theme = {
	normal = {
		a = { fg = colors.black, bg = colors.blue },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.black, bg = colors.bgcolor },
	},

	insert = { a = { fg = colors.black, bg = colors.yellow } },
	visual = { a = { fg = colors.black, bg = colors.violet } },
	replace = { a = { fg = colors.black, bg = colors.green } },

	inactive = {
		a = { fg = colors.white, bg = colors.black },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.black, bg = colors.black },
	},
}

require("lualine").setup({
	options = {
		theme = bubbles_theme,
		component_separators = "|",
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = {
			{ "mode", separator = { left = "" }, right_padding = 5 },
		},
		lualine_b = { "filename", "branch" },
		lualine_c = { "fileformat" },
		lualine_x = {},
		lualine_y = { "filetype", "progress" },
		lualine_z = {
			{ "location", separator = { right = "" }, left_padding = 5 },
		},
	},
	inactive_sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "location" },
	},
	tabline = {},
	extensions = {},
})
