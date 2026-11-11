return {
	"stevearc/aerial.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		layout = {
			default_direction = "right",
		},
	},
	keys = {
		{ "<leader>o", "<cmd>AerialToggle!<cr>", desc = "Toggle outline" },
	},
}
