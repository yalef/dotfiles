-- global vars
local g = vim.g
-- options
local opt = vim.opt
-- vim commands
local cmd = vim.cmd

-- General
opt.autochdir = true
opt.clipboard = 'unnamedplus'
opt.ignorecase = true
opt.smartcase = true
opt.hidden = true
opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.lazyredraw = true

-- UI
opt.showmode = false
opt.cursorline = true
opt.cmdheight = 2
opt.showtabline = 1
opt.termguicolors = true
opt.laststatus=3
opt.number = true
opt.showmatch = true
-- opt.colorcolumn = '80'

-- Tabs
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.smartindent = true

-- File browsing
g.netrw_banner = 0
g.netrw_liststyle = 3
g.netrw_browse_split = 3

