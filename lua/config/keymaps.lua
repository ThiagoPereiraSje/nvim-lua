vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap=true })

-- switch on split windows
vim.api.nvim_set_keymap('n', '<c-left>', '<c-w>h', { noremap=true })
vim.api.nvim_set_keymap('n', '<c-right>', '<c-w>l', { noremap=true })
vim.api.nvim_set_keymap('n', '<c-down>', '<c-w>j', { noremap=true })
vim.api.nvim_set_keymap('n', '<c-up>', '<c-w>k', { noremap=true })

-- nvim tree
vim.api.nvim_set_keymap('n', '<c-b>', ':NvimTreeToggle<CR>', { noremap=true })

-- float term
vim.api.nvim_set_keymap('n', '<c-j>', ':FloatermToggle<CR>', { noremap=true })
vim.api.nvim_set_keymap('t', '<c-n>', '<c-\\><c-n>:FloatermNew<CR>', { noremap=true })
vim.api.nvim_set_keymap('t', '<c-left>', '<c-\\><c-n>:FloatermPrev<CR>', { noremap=true })
vim.api.nvim_set_keymap('t', '<c-right>', '<c-\\><c-n>:FloatermNext<CR>', { noremap=true })
vim.api.nvim_set_keymap('t', '<c-j>', '<c-\\><c-n>:FloatermToggle<CR>', { noremap=true })

