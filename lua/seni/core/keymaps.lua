vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>c", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>bb", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- Create Files
keymap.set("n", "<leader>n", "<cmd>ene!<CR>")

-- Delete Text Without Yanking
keymap.set("n", "dx", "<cmd>_dP<CR>")

-- Yank Text
keymap.set("n", "vv", "<cmd>yank<CR>")

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- neo-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>f", "<cmd>Telescope find_files theme=dropdown<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>t", "<cmd>Telescope live_grep theme=dropdown<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string theme=dropdown<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers theme=dropdown<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags theme=dropdown<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- Bar Bar config

keymap.set("n", "<A-1>", "<Cmd>BufferLineGoToBuffer 1<CR>")
keymap.set("n", "<A-2>", "<Cmd>BufferLineGoToBuffer 2<CR>")
keymap.set("n", "<A-3>", "<Cmd>BufferLineGoToBuffer 3<CR>")
keymap.set("n", "<A-4>", "<Cmd>BufferLineGoToBuffer 4<CR>")
keymap.set("n", "<A-5>", "<Cmd>BufferLineGoToBuffer 5<CR>")
keymap.set("n", "<A-6>", "<Cmd>BufferLineGoToBuffer 6<CR>")
keymap.set("n", "<A-7>", "<Cmd>BufferLineGoToBuffer 7<CR>")
keymap.set("n", "<A-8>", "<Cmd>BufferLineGoToBuffer 8<CR>")
keymap.set("n", "<A-9>", "<Cmd>BufferLineGoToBuffer 9<CR>")
keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>")
