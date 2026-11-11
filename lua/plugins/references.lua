return {
	"Wansmer/symbol-usage.nvim",
	event = "LspAttach",
	config = function()
		require("symbol-usage").setup({
			vt_position = "above",
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "grr", builtin.lsp_references)
		vim.keymap.set("n", "<C-LeftMouse>", "<LeftMouse><cmd>Telescope lsp_references<cr>")
	end,
}
