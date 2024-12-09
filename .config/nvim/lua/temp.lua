return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme gruvbox]])
		end,
	},
	{ "hrsh7th/nvim-cmp", lazy = true },
	{ "hrsh7th/cmp-nvim-lsp", lazy = true },
	{ "neovim/nvim-lspconfig", lazy = true },
	{ "williamboman/mason.nvim", lazy = true },
	{ "williamboman/mason-lspconfig.nvim", lazy = true },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", lazy = true },
	{ "stevearc/conform.nvim" },
}

require("conform").setup({
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		rust = { "rustfmt" },
		lua = { "stylua" },
		python = { "isort", "black" },

		javascript = { "prettierd", "prettier", stop_after_first = true },
		vue = { "prettierd", "prettier", stop_after_first = true },
		css = { "prettierd", "prettier", stop_after_first = true },
		json = { "prettierd", "prettier", stop_after_first = true },
		yaml = { "prettierd", "prettier", stop_after_first = true },
		hotml = { "prettierd", "prettier", stop_after_first = true },
		markdown = { "prettierd", "prettier", stop_after_first = true },
	},
})
