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

-- lsp
vim.api.nvim_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'gD', ':lua vim.lsp.buf.declaration()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'gi', ':lua vim.lsp.buf.implementation()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'gw', ':lua vim.lsp.buf.document_symbol()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'gw', ':lua vim.lsp.buf.workspace_symbol()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'gr', ':lua vim.lsp.buf.references()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'gt', ':lua vim.lsp.buf.type_definition()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>rn', ':lua vim.lsp.buf.rename()<cr>', { noremap = true })
