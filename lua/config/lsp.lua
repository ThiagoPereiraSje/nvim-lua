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

-- lsp statusline config
lsp_status.config({
	current_function = false,
	show_filename = false,
	diagnostics = false,
	status_symbol = '',
	select_symbol = nil,
	update_interval = 200,
})

lsp_installer.on_server_ready(function(server)
	local opts = {}
	server:setup(opts)
end)
