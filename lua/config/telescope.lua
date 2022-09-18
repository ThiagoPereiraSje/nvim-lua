require('telescope').setup({
	defaults = {
		border = true,
		layout_strategy = 'bottom_pane',
		layout_config = {
			height = 0.30,
			width = 1.00,
		},
		sorting_strategy = 'ascending',
	},
})

require('trouble').setup({
	icons = false
})

-- Key mappings
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap=true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap=true })
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope buffers<CR>', { noremap=true })
vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<CR>', { noremap=true })

