vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Map make commands
vim.keymap.set("n", "<leader>mc", function() vim.cmd(':make c awa') end)
