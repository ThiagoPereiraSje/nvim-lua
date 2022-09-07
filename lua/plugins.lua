return require('packer').startup(function()
	-- packer can manage itself
	use 'wbthomason/packer.nvim'

	-- colorshcemes
	use 'projekt0n/github-nvim-theme'

	-- file explorer
	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'
end)
