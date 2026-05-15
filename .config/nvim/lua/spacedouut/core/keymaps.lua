vim.g.mapleader = " "   -- spacebar as leader, industry standard

local keymap = vim.keymap.set

-- Clear search highlight
keymap("n", "<leader>nh", ":nohl<CR>")

-- Better window navigation (you'll use these constantly)
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Resize splits
keymap("n", "<C-Up>", ":resize +2<CR>")
keymap("n", "<C-Down>", ":resize -2<CR>")

-- Stay in indent mode when indenting visual selection
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Move lines up/down in visual mode
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")
