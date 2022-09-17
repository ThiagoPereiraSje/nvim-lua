local cmp = require('cmp')
local lsp_status = require('lsp-status')
local lsp_win = require('lspconfig.ui.windows')
local lsp_installer = require('nvim-lsp-installer')

-- lsp windows config
local lsp_win_default_opts = lsp_win.default_opts

lsp_win.default_opts = function(options)
	local opts = lsp_win_default_opts(options)
	opts.border = 'rounded'

	return opts
end

lsp_installer.on_server_ready(function(server)
	local opts = {}
	server:setup(opts)
end)
