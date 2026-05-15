local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true   -- relative numbers = fast vertical movement

-- Tabs / indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true        -- case-sensitive if you use uppercase
opt.hlsearch = false        -- don't keep highlighting after search

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes"      -- always show, stops layout jumping
opt.cursorline = true

-- Behavior
opt.wrap = false
opt.scrolloff = 8           -- keep 8 lines above/below cursor
opt.splitright = true       -- vertical splits open right
opt.splitbelow = true       -- horizontal splits open below
opt.clipboard = "unnamedplus"  -- use system clipboard
