return {
  "folke/trouble.nvim",
  event = { "BufReadPost", "BufNewFile" }, -- Load when opening a file
  cmd = { "Trouble", "TroubleToggle" }, -- Also load when using these commands
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Ensure icons work properly
  keys = {
    { "<leader>xx", function() require("trouble").toggle("diagnostics") end, desc = "Toggle diagnostics (Trouble)" },
    { "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end, desc = "Workspace diagnostics (Trouble)" },
    { "<leader>xl", function() require("trouble").toggle("loclist") end, desc = "Location list (Trouble)" },
    { "<leader>xq", function() require("trouble").toggle("quickfix") end, desc = "Quickfix list (Trouble)" },
    { "gR", function() require("trouble").toggle("lsp_references") end, desc = "LSP References (Trouble)" },
  },
  opts = function()
    return {
      focus = false, -- Keeps focus behavior optional
      auto_fold = false, -- Don't auto-collapse items
      use_diagnostic_signs = true, -- Use LSP signs
    }
  end,
  config = function(_, opts)
    require("trouble").setup(opts)
  end,
}
