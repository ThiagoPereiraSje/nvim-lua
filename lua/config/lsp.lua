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

-- lsp autocomplete config
cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	mapping = {
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.close(),
		['<CR>'] = cmp.mapping.confirm({ select = false }),
		['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
		['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
	},
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'buffer' },
		{ name = 'path' },
	},
})

lsp_installer.on_server_ready(function(server)
	local opts = {}
	server:setup(opts)
end)
