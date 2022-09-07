vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap=true })

-- switch on split windows
vim.api.nvim_set_keymap('n', '<c-left>', '<c-w>h', { noremap=true })
vim.api.nvim_set_keymap('n', '<c-right>', '<c-w>l', { noremap=true })
vim.api.nvim_set_keymap('n', '<c-down>', '<c-w>j', { noremap=true })
vim.api.nvim_set_keymap('n', '<c-up>', '<c-w>k', { noremap=true })
