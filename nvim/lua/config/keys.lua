vim.keymap.set(
    'n',
    '<c-b>n',
    '<cmd>bn<cr>',
    { desc = 'Next buffer' }
)
vim.keymap.set(
    'n',
    '<c-b>p',
    '<cmd>bp<cr>',
    { desc = 'Previous buffer' }
)
vim.keymap.set(
    'n',
    '<c-b>q',
    '<cmd>bd<cr>',
    { desc = 'Close buffer' }
)
