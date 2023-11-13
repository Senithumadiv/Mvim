local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		mode = "tabs",
		separator_style = "block",
		underline_indicator = true,
		always_show_bufferline = true,
		show_buffer_close_icons = false,
		show_close_icon = false,
		color_icons = true,
	},
	highlights = {
		separator = {
			bg = "#414868",
		},
		separator_selected = {
			fg = "#a9b1d6",
		},
		background = {
			fg = "#0b0a10",
			bg = "#414856",
			italic = true,
		},
		buffer_selected = {
			fg = "#a9b1d6",
			bg = "#1e1e2e",
			bold = true,
		},
		fill = {
			bg = "#414868",
		},
	},
})

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
