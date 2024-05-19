vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Split navigation commands
vim.keymap.set({"n", "i"}, "<C-h>",  "<C-w>h")
vim.keymap.set({"n", "i"}, "<C-l>", "<C-w>l")
vim.keymap.set({"n", "i"}, "<C-j>", "<C-w>j")
vim.keymap.set({"n", "i"}, "<C-k>", "<C-w>k")
vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-h>')
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-j>')
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-k>')
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-l>')
vim.keymap.set("n", "<leader>b", ":bprevious<CR>")
vim.keymap.set("n", "<leader>n", ":bnext<CR>")
