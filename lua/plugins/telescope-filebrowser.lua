return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	config = function()
		vim.keymap.set('n', '<leader>tb', function()
			require("telescope").extensions.file_browser.file_browser() end, { desc = 'Telescope file browser' })
	end
}
