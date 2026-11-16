return {
	"kawre/leetcode.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		lang = "python3",
	},
	keys = {
		{ "<leader>ll", "<cmd>Leet lang<cr>", desc = "LeetCode language" },
		{ "<leader>lr", "<cmd>Leet run<cr>", desc = "LeetCode run" },
		{ "<leader>ls", "<cmd>Leet submit<cr>", desc = "LeetCode submit" },
	},
}
