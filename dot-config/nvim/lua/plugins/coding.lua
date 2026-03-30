---@diagnostic disable: undefined-global

return {
	{
		"mason-org/mason.nvim",
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
				-- Ansible
				"ansible-language-server",
				"ansible-lint",
			})
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters = {
				sqlfluff = {
					stdin = false,
					args = { "fix", "$FILENAME" },
				},
			},
			formatters_by_ft = {
				lua = { "stylua" },
				fish = { "fish_indent" },
				sh = { "shfmt" },
				python = { "isort", "black" },
				vue = { "prettierd" },
				yaml = { "prettierd" },
				sql = { "sqlfluff" },
			},
		},
	},
	{
		-- WARNING: Terminal fix on opts:
		-- https://github.com/LazyVim/LazyVim/pull/6774/changes#diff-f878104b5415a79ed4bb9036974722cad911327fdd46994e04f5065ff90e9a55
		"folke/sidekick.nvim",
		keys = {
			{ "<c-.>", false },
		},
		opts = function(_, opts)
			opts.nes = { enabled = false }
			opts.cli = opts.cli or {}
			opts.cli.win = opts.cli.win or {}
			opts.cli.win.keys = opts.cli.win.keys or {}

			opts.cli.win.keys.terminal_slash = {
				"<C-/>",
				function()
					Snacks.terminal(nil, { cwd = LazyVim.root() })
				end,
				desc = "Terminal (Root Dir)",
				mode = "t",
			}
			opts.cli.win.keys.terminal_underscore = {
				"<C-_>",
				function()
					Snacks.terminal(nil, { cwd = LazyVim.root() })
				end,
				desc = "which_key_ignore",
				mode = "t",
			}
		end,
	},
	{
		"coder/claudecode.nvim",
		lazy = false,
		keys = {
			{ "<leader>aa", false },
			{ "<leader>ad", false },
			{ "<leader>ay", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
			{ "<leader>an", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
		},
	},
}
