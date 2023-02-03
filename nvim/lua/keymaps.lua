local map = vim.keymap.set
local default_opts = {noremap = true, silent = true}

-- Double line on CTRL-d
map("n", "<C-d>", "yyp", default_opts)

-- Disable command line window
map("n", "Q", "<nop>", default_opts)
map("n", "q:", "<nop>", default_opts)
map("n", "q/", "<nop>", default_opts)
map("n", "q?", "<nop>", default_opts)

-- Tabs
map("n", "<C-t>", ":tabnew<CR>", default_opts)
map("n", "<C-left>", ":tabprevious<CR>", default_opts)
map("n", "<C-right>", ":tabnext<CR>", default_opts)
map("n", "<A-h>", ":tabprevious<CR>", default_opts)
map("n", "<A-l>", ":tabnext<CR>", default_opts)

