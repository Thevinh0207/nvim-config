return {
	"RRethy/vim-illuminate",
	event = "LspAttach",
	config = function()
		require("illuminate").configure({
			delay = 150,
			filetypes_denylist = {
				"neo-tree",
				"aerial",
				"oil",
				"lazy",
				"TelescopePrompt",
			},
		})
	end,
}
