local rs = require('rustaceanvim')
local bufnr = vim.api.nvim_get_current_buf()

vim.keymap.set('n', '<leader>z', function() vim.cmd.RustLsp('codeAction') end)
vim.keymap.set('n', '<leader>x', function() vim.cmd.RustLsp('renderDiagnostic') end)
vim.keymap.set('n', '<leader>c', function() vim.cmd.RustLsp('testables') end)
vim.keymap.set('n', '<leader>v', function() vim.cmd.RustLsp('run') end)

vim.keymap.set(
  "n", 
  "K",  -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp({'hover', 'actions'})
  end,
  { silent = true, buffer = bufnr }
)
