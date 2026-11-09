return {
    'stevearc/conform.nvim',
    event = "BufWritePre",
    config = function()
	local conform = require("conform")
	conform.setup({
	    formatters_by_ft = {
		lua = { "stylua" },
		python = { "ruff_format" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		svelte = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		scss = { "prettier" },
		json = { "prettier" },
		yaml = { "prettier" },
		markdown = { "prettier" },
		php = { "php_cs_fixer" },
		java = { "google-java-format" },
		c = { "clang-format" },
		cpp = { "clang-format" },
		cs = { "csharpier" },
		sh = { "shfmt" },
	    },
	    format_on_save = {
		timeout_ms = 1000,
		lsp_format = "fallback",
	    },
	})

	vim.keymap.set("n", "<leader>f", function() conform.format({ lsp_format = "fallback" }) end)
    end
}
