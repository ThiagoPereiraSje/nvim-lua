vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap=true })

vim.o.number=true

require('plugins/packer_loader')
