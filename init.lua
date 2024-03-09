-- set
vim.o.expandtab = true
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.hlsearch = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.o.tabstop = 4
-- remap
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>ae", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ap", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
