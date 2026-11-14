vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", "<CMD>Oil<CR>")

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- Move selec line with alt (same thing as VS rode)
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { silent = true })
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { silent = true })
vim.keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", { silent = true })
vim.keymap.set("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", { silent = true })
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { silent = true })

-- Shift select:
vim.opt.keymodel = "startsel,stopsel"
vim.opt.selectmode = ""

vim.keymap.set("x", "<C-S-Right>", "e")
vim.keymap.set("x", "<C-S-Left>", "b")

for _, char in ipairs({ '"', "'", "`", "(", "[", "{" }) do
	vim.keymap.set("x", char, "<Plug>(nvim-surround-visual)" .. char, { remap = true })
end

-- Select using keyboard
vim.keymap.set("n", "<C-S-Right>", "ve")
vim.keymap.set("n", "<C-S-Left>", "vb")
vim.keymap.set("i", "<C-S-Right>", "<C-o>ve")
vim.keymap.set("i", "<C-S-Left>", "<C-o>vb")

-- delete words with CTRL + Backspace
vim.keymap.set("i", "<C-BS>", "<C-w>")
vim.keymap.set("i", "<C-Del>", "<C-o>dw")

-- Custom keybinds for commenting out
vim.keymap.set("n", "<C-/>", "gcc", { remap = true })
vim.keymap.set("x", "<C-/>", "gc", { remap = true })
vim.keymap.set("i", "<C-/>", "<C-o>gcc", { remap = true })

vim.keymap.set("n", "<C-_>", "gcc", { remap = true })
vim.keymap.set("x", "<C-_>", "gc", { remap = true })
vim.keymap.set("i", "<C-_>", "<C-o>gcc", { remap = true })

-- Saving / exiting with leader key
vim.keymap.set("n", "<leader>w", "<CMD>wa<CR>")
vim.keymap.set("n", "<leader>wq", "<CMD>wqa<CR>")
