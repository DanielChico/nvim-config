return {
	{
		"williamboman/mason.nvim",
		config = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.pyright.setup({})
			vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "gh", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})
			vim.keymap.set("n", "<leader>d", function()
				vim.diagnostic.open_float(0, { scope = "line" })
			end, {})
			vim.keymap.set("n", "<leader>lr", function()
				vim.cmd("LspRestart")
			end)
		end,
	},
}
