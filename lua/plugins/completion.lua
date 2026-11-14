return {
    'saghen/blink.cmp',
    version = '1.*',
    dependencies = {
	'rafamadriz/friendly-snippets',
	{
	    'L3MON4D3/LuaSnip',
	    version = 'v2.*',
	    config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
	    end,
	},
	{
	    'abecodes/tabout.nvim',
	    dependencies = { 'nvim-treesitter/nvim-treesitter' },
	    opts = {
		tabkey = '<Tab>',
		backwards_tabkey = '<S-Tab>',
		act_as_tab = true,
		completion = false,
	    },
	},
    },
    opts = {
	keymap = {
	    preset = 'none',
	    ['<Tab>'] = { 'accept', 'snippet_forward', 'fallback' },
	    ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
	    ['<C-n>'] = { 'select_next', 'fallback' },
	    ['<C-p>'] = { 'select_prev', 'fallback' },
	    ['<Down>'] = { 'select_next', 'fallback' },
	    ['<Up>'] = { 'select_prev', 'fallback' },
	    ['<C-e>'] = { 'hide', 'fallback' },
	    ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
	    ['<CR>'] = {
		'accept',
		function()
		    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
		    local char = vim.api.nvim_get_current_line():sub(col + 1, col + 1)
		    if char == '"' or char == "'" then
			vim.api.nvim_win_set_cursor(0, { row, col + 1 })
			return true
		    end
		end,
		'fallback',
	    },
	},
	snippets = { preset = 'luasnip' },
	completion = {
	    documentation = { auto_show = true },
	},
	signature = { enabled = true },
	sources = {
	    default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
	    providers = {
		lazydev = {
		    name = "LazyDev",
		    module = "lazydev.integrations.blink",
		    score_offset = 100,
		},
	    },
	},
    },
}
