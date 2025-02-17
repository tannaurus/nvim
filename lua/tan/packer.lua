vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'


	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- lua/plugins/rose-pine.lua
	use({ 
		"rose-pine/neovim", 
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	})

   	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-lua/plenary.nvim') 
	use {
	    "ThePrimeagen/harpoon",
	    branch = "harpoon2",
	    requires = { {"nvim-lua/plenary.nvim"} }
	}
	use('williamboman/mason.nvim')
	use('williamboman/mason-lspconfig.nvim')
	use('neovim/nvim-lspconfig')

	use('mrcjkb/rustaceanvim')

	-- Completion framework:
	use('hrsh7th/nvim-cmp') 

	-- LSP completion source:
	use('hrsh7th/cmp-nvim-lsp')

	-- Useful completion sources:
	use('hrsh7th/cmp-nvim-lua')
	use('hrsh7th/cmp-nvim-lsp-signature-help')
	use('hrsh7th/cmp-vsnip')                             
	use('hrsh7th/cmp-path')                           
	use('hrsh7th/cmp-buffer')                            
	use('hrsh7th/vim-vsnip')
	
	-- Nice to haves
	use {
	    "windwp/nvim-autopairs",
	    event = "InsertEnter",
	    config = function()
		require("nvim-autopairs").setup {}
	    end
	}

	-- Mappings for quick comments
	use {
	    'numToStr/Comment.nvim',
	    config = function()
		require('Comment').setup()
	    end
	}

	-- Highlights function arguments
	use('m-demare/hlargs.nvim')

	use('folke/trouble.nvim')
	use('preservim/tagbar')

	use('preservim/nerdtree')
	use('Xuyuanp/nerdtree-git-plugin')
	use('ryanoasis/vim-devicons')
	use('tiagofumo/vim-nerdtree-syntax-highlight')
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use('romainl/vim-cool')
	use('tpope/vim-fugitive')
	-- Enables :GBrowse for Github.
	use('tpope/vim-rhubarb')
end)
