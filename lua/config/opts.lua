vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.o.number = true
-- Sort tags by location in file
vim.g.tagbar_sort = 0

vim.o.spell = true

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
