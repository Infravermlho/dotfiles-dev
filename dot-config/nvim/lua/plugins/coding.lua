return {
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				-- Lua
				"stylua",
				"selene",
				"luacheck",
				-- Shell
				"shellcheck",
				"shfmt",
				-- Javascript
				"tailwindcss-language-server",
				"vue-language-server",
				"typescript-language-server",
				"css-lsp",
				-- Python
				"black",
				"isort",
				-- Misc
				"yaml-language-server",
				"prettierd",
				-- Go
				"gopls",
				"golangci-lint",
			})
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				["lua"] = { "stylua" },
				["fish"] = { "fish_indent" },
				["sh"] = { "shfmt" },
				["python"] = { "isort", "black" },
				["yaml"] = { "prettierd" },
				["json"] = { "prettierd" },
				["markdown"] = { "prettierd" },
				["vue"] = { "prettierd" },
			},
		},
	},
}
