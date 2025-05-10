-- Plugins with small configs

return {
	{ -- Show CSS Colors
		'brenoprata10/nvim-highlight-colors',
		config = function ()
			require('nvim-highlight-colors').setup({})
		end
	},
	{ "nvim-tree/nvim-web-devicons", opts = {} },
}
