return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				theme = "auto",
				globalstatus = true,
			},
		},
	},
	{
		"folke/which-key.nvim",
		enabled = true,
		opts = {
			preset = "helix",
			debug = vim.uv.cwd():find("which%-key"),
			win = {},
			spec = {},
		},
	},
}
