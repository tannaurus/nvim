return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = "VeryLazy",
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED
	end,
	keys = {
		{ "<leader>a", function() require("harpoon"):list():add() end, desc = "Add to Harpoon" },
		{ "<C-e>", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, desc = "Toggle Harpoon Menu" },

		{ "<C-h>", function() require("harpoon"):list():select(1) end, desc = "Select Harpoon 1" },
		{ "<C-t>", function() require("harpoon"):list():select(2) end, desc = "Select Harpoon 2" },
		{ "<C-n>", function() require("harpoon"):list():select(3) end, desc = "Select Harpoon 3" },
		{ "<C-s>", function() require("harpoon"):list():select(4) end, desc = "Select Harpoon 4" },

		{ "<C-S-P>", function() require("harpoon"):list():prev() end, desc = "Previous Harpoon Buffer" },
		{ "<C-S-N>", function() require("harpoon"):list():next() end, desc = "Next Harpoon Buffer" },
	}
}
