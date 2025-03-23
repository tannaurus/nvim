return {
	"nvim-lualine/lualine.nvim",
	event = "UIEnter",  -- Lazy load after the UI is initialized
	config = function()
		require('lualine').setup {
			options = {
				icons_enabled = true,
				theme = 'everforest',
				component_separators = { left = '', right = '' },
				section_separators = { left = '', right = '' },
				disabled_filetypes = {
					statusline = { 'packer', 'nerdtree', 'trouble', 'tagbar' },
					winbar = { 'packer', 'nerdtree', 'trouble', 'tagbar' },
				},
				ignore_focus = {},
				always_divide_middle = true,
				always_show_tabline = true,
				globalstatus = false,
				refresh = {
					statusline = 100,
					tabline = 100,
					winbar = 100,
				}
			},
			sections = {
				lualine_a = {'mode'},
				lualine_b = {'branch', 'diagnostics'},
				lualine_c = {'filename'},
				lualine_x = {'filetype'},
				lualine_y = {'progress'},
				lualine_z = {'location'}
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {'filename'},
				lualine_x = {'location'},
				lualine_y = {},
				lualine_z = {}
			},
			tabline = {},
			winbar = {
				lualine_c = {
					{
						'filename',
						file_status = true,      -- Displays file status (readonly, modified, etc.)
						newfile_status = false,  -- Display new file status
						path = 1,                -- 0: Just filename, 1: Relative path, 2: Absolute path
						shorting_target = 40,    -- Shorten path to fit
						symbols = {
							modified = ' ●',
							readonly = '[-]',
							unnamed = '[No Name]',
							newfile = '[New]',
						}
					},
					'diff',
					'searchcount'
				}
			},
			inactive_winbar = {},
			extensions = { 'nerdtree' }
		}
	end,
}
