require('nvim-tree').setup()

-- nvim tree
vim.api.nvim_set_keymap('n', '<c-b>', ':NvimTreeToggle<CR>', { noremap=true })

