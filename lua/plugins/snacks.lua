return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		bufdelete = { enabled = true },
		notifier = { enabled = true },
		dashboard = { enabled = true },
		lazygit = { enabled = true },
		input = { enabled = true },
		indent = { enabled = true },
	},
	keys = {
		-- Buffer Delete
		{ "<leader>x", function() Snacks.bufdelete.delete() end, desc = "Close buffer" },
		{ "<leader>X", function() Snacks.bufdelete.all() end, desc = "Close all buffers" },
	}
}
