return {
	{
		"Bekaboo/dropbar.nvim",
		config = function()
			require("dropbar").setup()
			vim.keymap.set("n", "<leader>;", require("dropbar.api").pick, { desc = "Pick breadcrumb" })
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				filesystem = {
					follow_current_file = { enabled = true },
					hijack_netrw_behavior = "disabled",
				},
				window = {
					width = 30,
				},
			})
			vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle file tree" })
		end,
	},
}
