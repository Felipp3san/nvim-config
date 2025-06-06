return {
	'akinsho/bufferline.nvim',
	event = "VeryLazy",
	version = "*",
	config = function()
		require('bufferline').setup {
			options = {
				mode = 'buffers', -- set to "tabs" to only show tabpages instead
				close_command = function(n) Snacks.bufdelete(n) end, -- can be a string | function, | false see "Mouse actions"
				left_mouse_command = 'buffer %d', -- can be a string | function, see "Mouse actions"
				middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
				always_show_bufferline = false,
				buffer_close_icon = '✗',
				diagnostics = "nvim_lsp",
				offsets = {
					{
						filetype = 'snacks_layout_box',
						text = '󰙅  File Explorer',
						separator = true,
					},
				},
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
