return {
	"nvim-telescope/telescope.nvim",
	dependencies = { 
		"folke/trouble.nvim",
		{ 
			"nvim-telescope/telescope-fzf-native.nvim", build = "make", config = function() 
				require("telescope").load_extension("fzf") 
			end
		}
	},
	cmd = "Telescope",
	keys = {
		{ "<leader>pf", function() require("telescope.builtin").find_files() end, desc = "Find Files" },
		{ "<leader>gf", function() require("telescope.builtin").git_files() end, desc = "Find Git Files" },
		{ "<leader>fg", function() require("telescope.builtin").live_grep() end, desc = "Live Grep" },
		{ "<leader>ps", function() require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") }) end, desc = "Grep String" },
		{ "<leader>fd", function() require("telescope.builtin").diagnostics() end, desc = "Find Diagnostics" },
		{ "<leader>fr", function() require("telescope.builtin").resume() end, desc = "Resume Last Search" },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local open_with_trouble = require("trouble.sources.telescope").open

		telescope.setup({
			defaults = {
				layout_strategy = "horizontal",
				layout_config = { prompt_position = "bottom" },
				sorting_strategy = "descending",
				preview = true, -- Enables file preview
				mappings = {
					i = { ["<c-t>"] = open_with_trouble },
					n = { ["<c-t>"] = open_with_trouble },
				},
			},
			pickers = {
				find_files = { hidden = true }, -- Show hidden files
				live_grep = { only_sort_text = true },
			},
		})
	end,
}
