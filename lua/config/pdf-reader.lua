vim.api.nvim_create_autocmd("BufReadCmd", {
	pattern = "*.pdf",
	callback = function(args)
		vim.fn.jobstart({ "zathura", args.file }, { detach = true })
		vim.schedule(function()
			vim.api.nvim_buf_delete(args.buf, { force = true })
		end)
	end,
})
