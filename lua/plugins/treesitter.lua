return{
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ":TSUpdate",
    config =  function()
	local treesitter = require("nvim-treesitter")
	treesitter.install({
		"lua",
		"java",
		"tsx",
		"svelte",
		"python",
		"c_sharp",
		"typescript",
		"php",
		"html",
		"css",
		"javascript",
	})
	vim.api.nvim_create_autocmd("FileType", {
	   callback = function(args)
		if pcall(vim.treesitter.start, args.buf) then
		   vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		end
	   end,
	})
    end
}
