return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("bufferline").setup({
			options = {
				diagnostics = "nvim_lsp",
				show_buffer_close_icons = false,
				show_close_icon = false,
				separator_style = "thin",
			},
		})

		vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>")
		vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>")
		vim.keymap.set("n", "<C-w>", "<cmd>bdelete<cr>")
	end,
}
