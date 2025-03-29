return {
	'mrcjkb/rustaceanvim',  -- Original rustaceanvim plugin
	config = function()
		-- Rust plugin-specific configuration
		local bufnr = vim.api.nvim_get_current_buf()

		vim.lsp.inlay_hint.enable(true)

		-- Define key mappings for Rust LSP actions
		vim.keymap.set('n', '<leader>z', function() vim.cmd.RustLsp('codeAction') end)
		vim.keymap.set('n', '<leader>x', function() vim.cmd.RustLsp('renderDiagnostic') end)
		vim.keymap.set('n', '<leader>c', function() vim.cmd.RustLsp('testables') end)
		vim.keymap.set('n', '<leader>v', function() vim.cmd.RustLsp('run') end)

		vim.keymap.set('n', '<leader>n', function() vim.cmd.RustLsp('openDocs') end)
		vim.keymap.set('n', '<leader>m', function() vim.cmd.RustLsp('openCargo') end)
		
		-- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
		vim.keymap.set(
			"n", 
			"K",  
			function()
				vim.cmd.RustLsp({'hover', 'actions'})
			end,
			{ silent = true, buffer = bufnr }
		)

	end,
	-- Optionally, specify lazy loading options here if needed
	ft = "rust",  -- Lazy load when opening a Rust file
}
