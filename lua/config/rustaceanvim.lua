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
		    },
		    ["autoImport"] = {
			    ["enable"] = true
		    },
		    ["fullFunctionSignatures"] = {
			    ["enable"] = true
		    },
		    ["hover"] = {
			    ["actions"] = {
				    ["enable"] = true,
				    ["implementations"] = {
					    ["enable"] = true
				    }
			    }
		    },
		    ["inlayHints"] = {
			    ["genericParameterHints"] = {
				    ["type"] = {
					    ["enable"] = true
				    }
			    },
			    ["typeHints"] = {
				    ["enabled"] = true,

			    }
		    } 
	    },
    },
  },
}
