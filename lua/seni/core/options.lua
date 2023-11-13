local opt = vim.opt

-- Line Numbers
opt.relativenumber = true
opt.number = true

-- Tabs $ indentation

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping

opt.wrap = false

-- Search setting

opt.ignorecase = true
opt.smartcase = true

-- cursor line

opt.cursorline = true
opt.cursorcolumn = true

-- appearance

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"


-- Backspace

opt.backspace = "indent,eol,start"

-- clipboard

opt.clipboard:append("unnamedplus")

-- slipt windows

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
