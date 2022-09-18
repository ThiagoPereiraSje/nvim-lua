return require('packer').startup(function()
	-- packer can manage itself
	use 'wbthomason/packer.nvim'

	-- colorshcemes
	use 'projekt0n/github-nvim-theme'

	-- file explorer
	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'

	-- float term
	use 'voldikss/vim-floaterm'

	-- lsp
	use 'williamboman/nvim-lsp-installer'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/nvim-cmp'
	use 'nvim-lua/lsp-status.nvim'
	use 'tamago324/nlsp-settings.nvim'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'

	-- treesitter
	use 'nvim-treesitter/nvim-treesitter'

	-- status line
	use 'nvim-lualine/lualine.nvim'

	-- telescope
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'folke/trouble.nvim'
end)
