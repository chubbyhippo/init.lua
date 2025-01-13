-- color scheme
vim.cmd.colorscheme 'default'

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

-- Add all subdirectories to the search path
vim.opt.path:append("**") -- Recursively search subdirectories for files

-- Exclude unwanted files and directories from wildmenu and :find
vim.opt.wildignore:append({
    "*.o",           -- Ignore object files
    "*.obj",         -- Ignore compiled objects
    "*.bin",         -- Ignore binaries
    "*.exe",         -- Ignore executables
    "*.dll",         -- Ignore dynamic libraries
    "*.pyc",         -- Ignore Python cache
    "*.class",       -- Ignore Java class files
    "*.jar",         -- Ignore JAR files
    "*/.git/*",      -- Ignore Git directory
    "*/node_modules/*", -- Ignore Node.js dependencies
    "*/dist/*",      -- Ignore build directories
    "*/target/*"     -- Ignore Maven/Gradle build directories
})

-- Improvements for command-line completion (wildmenu)
vim.opt.wildmenu = true                      -- Enable command-line completion
vim.opt.wildmode = "longest:full,full"       -- Show the longest match first, then all options
vim.opt.wildignorecase = true                -- Ignore case during completion

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

vim.keymap.set('n', '<c-j>', '<c-n>')
vim.keymap.set('n', '<c-k>', '<c-p>')
vim.keymap.set('i', '<c-j>', '<c-n>')
vim.keymap.set('i', '<C-k>', '<c-p>')
vim.keymap.set('c', '<c-j>', '<c-n>')
vim.keymap.set('c', '<c-k>', '<c-p>')

vim.keymap.set("n", "<leader>ap", vim.cmd.Ex)
vim.keymap.set("n", "<leader>eV", ":e $MYVIMRC<cr>", { noremap = true, silent = true })

-- status line
vim.o.statusline = [[%<%f %h%m%r %y%=%{v:register} %-14.(%l,%c%V%) %P]]
