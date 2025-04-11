-- ui
vim.cmd.colorscheme("retrobox")
vim.opt.number = true       -- set line numbers
vim.opt.cursorline = true   -- highlight active line
vim.opt.showtabline = 0     -- always hide tabline
vim.opt.listchars = {       -- display spaces and tabs as characters
    space = "•",
    tab = "|-",
}
vim.opt.list = true
vim.opt.fillchars:append(   -- replace ~ symbol with empthiness
    { eob = " " }
)

-- tabs
vim.opt.expandtab = true    -- use spaces for tabs
vim.opt.tabstop = 4         -- number of spaces in tab
vim.opt.shiftwidth = 4      -- spaces count for auto indent in code blocks
vim.opt.smartindent = true  -- indent new lines on previous level
vim.opt.smarttab = true     -- delete number of spaces when deleting tab

-- search
vim.opt.ignorecase = true   -- ignore case during search
vim.opt.smartcase = true    -- if contains upper case then case sensitive
vim.opt.showmatch = true    -- show search matches

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- swapfile
vim.opt.swapfile = false

