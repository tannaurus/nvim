return {
	{
		"hrsh7th/nvim-cmp",  -- You can use the lazy.nvim plugin manager to load this plugin
		event = "InsertEnter",  -- Load when entering Insert mode
		config = function()
			local cmp = require'cmp'

			cmp.setup({
				snippet = {
					expand = function(args)
						vim.fn["vsnip#anonymous"](args.body)
					end,
				},
				mapping = {
					['<C-p>'] = cmp.mapping.select_prev_item(),
					['<C-n>'] = cmp.mapping.select_next_item(),
					['<S-Tab>'] = cmp.mapping.select_prev_item(),
					['<Tab>'] = cmp.mapping.select_next_item(),
					['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.close(),
					['<CR>'] = cmp.mapping.confirm({
						behavior = cmp.ConfirmBehavior.Insert,
						select = true,
					})
				},
				sources = {
					{ name = 'path' },                              -- file paths
					{ name = 'nvim_lsp', keyword_length = 3 },      -- from language server
					{ name = 'nvim_lsp_signature_help' },           -- function signatures
					{ name = 'nvim_lua', keyword_length = 2 },      -- neovim's Lua API
					{ name = 'buffer', keyword_length = 2 },        -- current buffer source
					{ name = 'vsnip', keyword_length = 2 },         -- vim-vsnip source
					{ name = 'calc' },                              -- math calculation
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				formatting = {
					fields = {'menu', 'abbr', 'kind'},
					format = function(entry, item)
						local menu_icon = {
							nvim_lsp = 'λ',
							vsnip = '⋗',
							buffer = 'Ω',
							path = '🖫',
						}
						item.menu = menu_icon[entry.source.name]
						return item
					end,
				},
			})
		end
	},
	{'hrsh7th/cmp-nvim-lua'},
	{'hrsh7th/cmp-nvim-lsp-signature-help'},
	{'hrsh7th/cmp-vsnip'},                             
	{'hrsh7th/cmp-path'},                           
	{'hrsh7th/cmp-buffer'},                            
	{'hrsh7th/vim-vsnip'},
}
