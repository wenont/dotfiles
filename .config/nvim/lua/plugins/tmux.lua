-- ~/.config/nvim/lua/plugins/tmux.lua
return {
	{
		"aserowy/tmux.nvim",
		config = function()
			require("tmux").setup({
				navigation = {
					enable_default_keybindings = false,
				},
				resize = {
					enable_default_keybindings = false,
				},
			})

			local map = vim.keymap.set
			map("n", "<C-h>", function()
				require("tmux").move_left()
			end)
			map("n", "<C-j>", function()
				require("tmux").move_bottom()
			end)
			map("n", "<C-k>", function()
				require("tmux").move_top()
			end)
			map("n", "<C-l>", function()
				require("tmux").move_right()
			end)

			map("n", "<M-h>", function()
				require("tmux").resize_left()
			end)
			map("n", "<M-j>", function()
				require("tmux").resize_bottom()
			end)
			map("n", "<M-k>", function()
				require("tmux").resize_top()
			end)
			map("n", "<M-l>", function()
				require("tmux").resize_right()
			end)
		end,
	},
}
