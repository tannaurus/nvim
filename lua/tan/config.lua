
-- Tagbar
-- - Sort tags by location in file
vim.g.tagbar_sort = 0

-- NERDTree git plugin
-- - Enable the use of nerdfonts
vim.g.NERDTreeGitStatusUseNerdFonts = 1
vim.g.NERDTreeFileExtensionHighlightFullName = 1

-- Rustaceanvim
-- - Ensure rust-analyzer is configured
vim.g.rustaceanvim = {
  -- LSP configuration
  server = {
    default_settings = {
	    -- rust-analyzer language server configuration
	    ['rust-analyzer'] = {
		    ["cargo"] = {
			    ["buildScripts"] = {
				    ["enable"] = true,
			    },
		    },
		    ["procMacro"] = {
			    ["enable"] = true,
		    }
	    },
    },
  },
}
