return {
	"preservim/tagbar",
	cmd = "TagbarToggle", -- Lazy-load on the :TagbarToggle command
	keys = {
		{ "<leader>tb", function() vim.cmd(":TagbarToggle") end, desc = "Toggle Tagbar" },
	},
	ft = { "rust", "go", "typescript", "javascript", "lua" },
}
