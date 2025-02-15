local trouble = require('trouble')

trouble.setup({
	focus = true
})
vim.keymap.set("n", "<leader>xx", function() trouble.toggle("diagnostics") end, { desc = "Open diagnostics with trouble" })
