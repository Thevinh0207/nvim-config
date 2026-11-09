return {
    {
	'folke/lazydev.nvim',
	ft = "lua",
	opts = {},
    },
    {
	'mason-org/mason.nvim',
	opts = {},
    },
    {
	'WhoIsSethDaniel/mason-tool-installer.nvim',
	dependencies = { 'mason-org/mason.nvim' },
	opts = {
	    ensure_installed = {
		"prettier",
		"stylua",
		"php-cs-fixer",
		"google-java-format",
		"clang-format",
		"csharpier",
		"shfmt",
	    },
	},
    },
    {
	'mason-org/mason-lspconfig.nvim',
	dependencies = { 'mason-org/mason.nvim', 'neovim/nvim-lspconfig', 'saghen/blink.cmp' },
	config = function()
	    vim.lsp.config('*', {
		capabilities = require("blink.cmp").get_lsp_capabilities(),
	    })

	    require("mason-lspconfig").setup({
		ensure_installed = {
		    "lua_ls",
		    "ts_ls",
		    "eslint",
		    "html",
		    "cssls",
		    "tailwindcss",
		    "emmet_language_server",
		    "jsonls",
		    "svelte",
		    "intelephense",
		    "pyright",
		    "ruff",
		    "jdtls",
		    "omnisharp",
		    "clangd",
		    "bashls",
		    "yamlls",
		    "dockerls",
		    "docker_compose_language_service",
		},
	    })

	    vim.diagnostic.config({
		virtual_text = true,
		signs = true,
		underline = true,
		severity_sort = true,
		update_in_insert = false,
		float = { border = "rounded" },
	    })

	    vim.api.nvim_create_autocmd("LspAttach", {
		callback = function(args)
		    local opts = { buffer = args.buf }
		    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
		end,
	    })
	end
    },
}
