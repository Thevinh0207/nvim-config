vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", "<CMD>Oil<CR>")

-- Clear highlights on search when pressing <Esc> in normal mode

vim.keymap.set("n", "cl", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })
