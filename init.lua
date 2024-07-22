-- color scheme
vim.cmd.colorscheme 'habamax'

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
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.tabstop = 4
vim.o.clipboard = 'unnamedplus'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.signcolumn = 'yes'
vim.o.timeoutlen = 300

-- remap
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- window sizing
vim.keymap.set("n", "-", "<c-w>5-")
vim.keymap.set("n", "=", "<c-w>5+")
vim.keymap.set("n", "_", "<c-w>25<")
vim.keymap.set("n", "+", "<c-w>25>")

-- window splitting
vim.keymap.set("n", "<c-h>", "<c-w><c-h>")
vim.keymap.set("n", "<c-j>", "<c-w><c-j>")
vim.keymap.set("n", "<c-k>", "<c-w><c-k>")
vim.keymap.set("n", "<c-l>", "<c-w><c-l>")
vim.keymap.set("i", "<c-h>", "<c-w><c-h>")
vim.keymap.set("i", "<c-j>", "<c-w><c-j>")
vim.keymap.set("i", "<c-k>", "<c-w><c-k>")
vim.keymap.set("i", "<c-l>", "<c-w><c-l>")

vim.keymap.set("n", "<leader>ae", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ap", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- status line
vim.o.statusline = [[%<%f %h%m%r %y%=%{v:register} %-14.(%l,%c%V%) %P]]

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- add your plugins here
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
