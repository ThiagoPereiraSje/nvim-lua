-- install gcc and clang
require('nvim-treesitter.configs').setup({
	ensure_installed = { 'c', 'lua' },
	sync_install = false,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	ident = {
		enable = true,
	},
})
