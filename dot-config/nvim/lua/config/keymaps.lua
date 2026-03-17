local set = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- WARNING: Terminal fix:
-- https://github.com/LazyVim/LazyVim/pull/6774/changes#diff-f878104b5415a79ed4bb9036974722cad911327fdd46994e04f5065ff90e9a55
set("n", "<c-/>", function()
	Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (Root Dir)" })
set("n", "<c-_>", function()
	Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "which_key_ignore" })

-- Terminal Mappings
set("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
set("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })
