local opts = { buffer = true }

vim.keymap.set("i", "<M-P>", "=>", opts)
vim.keymap.set("i", "<C-S-j>", "$this->", opts)
vim.keymap.set("i", "<C-S-k>", "->", opts)
vim.keymap.set("i", "<C-S-l>", "<lt>?php", opts)
vim.keymap.set("i", "<S-CR>", "$", opts)
vim.keymap.set("i", "<S-Space>", "_", opts)
