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


-- lsp config key maps
local key_map = function (mode, key, command)
	vim.api.nvim_set_keymap(mode, key, ':' .. command .. '<cr>', {
		noremap = true,
		silent = true,
	})
end

local lsp_attach_completion = function (client)
	lsp_status.register_progress()
	lsp_status.on_attach(client)

	-- key mpas
	key_map('n', 'ga', 'lua vim.lsp.buf.code_action()')
	key_map('n', 'gd', 'lua vim.lsp.buf.declaration()')
	key_map('n', '<leader>gd', 'lua vim.lsp.buf.definition()')
	key_map('n', 'gi', 'lua vim.lsp.buf.implementation()')
	key_map('n', 'gr', 'lua vim.lsp.buf.references()')
	key_map('n', 'gk', 'lua vim.lsp.buf.hover()')
	key_map('n', '<leader>rn', 'lua vim.lsp.buf.rename()')
	key_map('n', '<leader>cf', 'lua vim.lsp.buf.formatting()')
	-- diagnostic key maps
	key_map('n', 'ge', 'lua vim.lsp.diagnostic.goto_next()')
	key_map('n', '<leader>ge', 'lua vim.lsp.diagnostic.goto_prev()')
	key_map('n', 'g1', 'lua vim.lsp.diagnostic.show_line_diagnostics()')
end


-- lsp installer config
lsp_installer.settings({
	ui = {
		icons = {
			server_installed = '✓',
			server_pending = '➜',
			server_uninstalled = '✗',
		},
	},
})

lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = lsp_attach_completion,
		capabilities = require('cmp_nvim_lsp').update_capabilities(
			vim.lsp.protocol.make_client_capabilities()
		),
		flags = {
			debounce_text_changes = 150,
		},
	}

	server:setup(opts)
end)
