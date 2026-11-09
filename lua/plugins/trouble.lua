return {
	"folke/trouble.nvim",
	cmd = "Trouble",
	opts = {},
	keys = {
		{ "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>" },
		{ "<leader>xb", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>" },
	},
}
