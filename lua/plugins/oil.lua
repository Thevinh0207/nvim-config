return {
	"stevearc/oil.nvim",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local oil = require("oil")
		local refresh = require("oil.actions").refresh.callback
		oil.setup({
			keymaps = {
				["%"] = function()
					local name = vim.fn.input("New file: ")
					if name ~= "" then
						vim.cmd.edit(oil.get_current_dir() .. name)
					end
				end,
				["d"] = function()
					local name = vim.fn.input("New directory: ")
					if name ~= "" then
						vim.fn.mkdir(oil.get_current_dir() .. name, "p")
						refresh()
					end
				end,
				["D"] = function()
					local entry = oil.get_cursor_entry()
					if entry and vim.fn.confirm("Delete " .. entry.name .. "?", "&Yes\n&No", 2) == 1 then
						vim.fn.delete(oil.get_current_dir() .. entry.name, "rf")
						refresh()
					end
				end,
				["R"] = function()
					local entry = oil.get_cursor_entry()
					if entry then
						local name = vim.fn.input("Rename to: ", entry.name)
						if name ~= "" and name ~= entry.name then
							local dir = oil.get_current_dir()
							vim.fn.rename(dir .. entry.name, dir .. name)
							refresh()
						end
					end
				end,
			},
		})
		vim.keymap.set("n", "-", "<CMD>Oil<CR>")
	end,
}
