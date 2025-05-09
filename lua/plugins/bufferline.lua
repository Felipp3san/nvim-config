return {
	'akinsho/bufferline.nvim', 
	version = "*", 
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		require('bufferline').setup {
			options = {
				mode = 'buffers', -- set to "tabs" to only show tabpages instead
				left_mouse_command = 'buffer %d', -- can be a string | function, see "Mouse actions"
				middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
				always_show_bufferline = true,
				buffer_close_icon = '✗',
			},
			 highlights = {
				separator = {
				  fg = '#434C5E',
				},
				buffer_selected = {
				  bold = true,
				  italic = false,
				},
				-- separator_selected = {},
				-- tab_selected = {},
				-- background = {},
				-- indicator_selected = {},
				-- fill = {},
			},
		}
	end,
}
