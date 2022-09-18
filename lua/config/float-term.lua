-- float term
vim.api.nvim_set_keymap('n', '<c-j>', ':FloatermToggle<CR>', { noremap=true })
vim.api.nvim_set_keymap('t', '<c-n>', '<c-\\><c-n>:FloatermNew<CR>', { noremap=true })
vim.api.nvim_set_keymap('t', '<c-left>', '<c-\\><c-n>:FloatermPrev<CR>', { noremap=true })
vim.api.nvim_set_keymap('t', '<c-right>', '<c-\\><c-n>:FloatermNext<CR>', { noremap=true })
vim.api.nvim_set_keymap('t', '<c-j>', '<c-\\><c-n>:FloatermToggle<CR>', { noremap=true })

