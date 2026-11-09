return {
    'saghen/blink.cmp',
    version = '1.*',
    dependencies = { 'rafamadriz/friendly-snippets' },
    opts = {
	keymap = { preset = 'enter' },
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
