return {
    "mason-org/mason.nvim",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = {"lua_ls", "clangd"},
		})

		vim.diagnostic.config({
			virtual_text = {
				source = "if_many",
				prefix = '● ',
			},
			update_in_insert = true,
			underline = true,
			severity_sort = true,
			float = {
				focusable = false,
				style = 'minimal',
				border = 'rounded',
				source = 'if_many',
				header = '',
				prefix = '',
			},
		})

		vim.lsp.enable('clangd')
	end
}
