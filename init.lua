-- color scheme
vim.cmd.colorscheme 'default'

-- Netrw Configuration
vim.g.netrw_browse_split = 4    -- Open netrw in a vertical split
vim.g.netrw_altv = 1            -- Place the split window on the left
vim.g.netrw_liststyle = 3       -- Use tree-style view
vim.g.netrw_winsize = 25        -- Set netrw window size to 25% of Vim

-- Configure `grepprg` to use standard grep
vim.opt.grepprg = "grep -HIRin $* ."
vim.opt.grepformat = "%f:%l:%c:%m"

-- Enable line numbers
vim.opt.number = true                  -- Absolute line numbers
vim.opt.relativenumber = true          -- Relative line numbers

-- Tab and indentation settings
vim.opt.tabstop = 4                    -- Number of spaces for a tab
vim.opt.shiftwidth = 4                 -- Size of an indent
vim.opt.expandtab = true               -- Use spaces instead of tabs
vim.opt.smartindent = true             -- Enable smart indenting
vim.opt.breakindent = true             -- Ensure lines wrap properly

-- Search settings
vim.opt.ignorecase = true              -- Case-insensitive search
vim.opt.smartcase = true               -- Case-sensitive if uppercase letters are in search
vim.opt.incsearch = true               -- Incremental search
vim.opt.hlsearch = true                -- Highlight search results

-- Disable backup and swap files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Enable undo and set undo file directory
vim.opt.undofile = true                -- Enable persistent undo
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"

-- Whitespace and scrolling
vim.opt.wrap = false                   -- Disable line wrapping
vim.opt.scrolloff = 8                  -- Minimum number of lines above/below the cursor
vim.opt.sidescrolloff = 8              -- Minimum number of columns to the left/right of the cursor

-- UI tweaks
vim.opt.termguicolors = true           -- Enable true-color support
vim.opt.signcolumn = "yes"             -- Always show the sign column
vim.opt.cursorline = true              -- Highlight the current line
vim.opt.colorcolumn = "80"             -- Highlight the 80th column
vim.opt.splitbelow = true              -- Open horizontal splits below
vim.opt.splitright = true              -- Open vertical splits to the right

-- Faster completion and command execution
vim.opt.updatetime = 300               -- Faster display updates and completion (ms)
vim.opt.timeoutlen = 500               -- Key mapping timeout (ms)

-- Enable mouse support
vim.opt.mouse = "a"                    -- Enable mouse in all modes

-- Better clipboard support
vim.opt.clipboard = "unnamedplus"      -- Use the system clipboard

-- Better file encoding handling
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Wildmenu improvements
vim.opt.wildmenu = true                -- Enable visual autocompletion for commands
vim.opt.wildmode = "longest:full,full" -- Command completion mode

-- Disable error bells
vim.opt.errorbells = false
vim.opt.visualbell = true

-- Reduce command line height
vim.opt.cmdheight = 1

-- Fold settings
vim.opt.foldmethod = "marker"          -- Use markers for folding
vim.opt.foldlevel = 99                 -- Start unfolded

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
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("n", "<Tab>", ":tabnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":tabprevious<CR>")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<Leader><Leader>", "<C-^>", { noremap = true })
vim.keymap.set("n", "<Leader>ap", vim.cmd.Lexplore, { noremap = true })
vim.keymap.set("n", "<Leader>aq", ":copen<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>at", ":terminal<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>b", ":buffers<CR>:buffer<Space>", { noremap = true })
vim.keymap.set("n", "<Leader>dh", ":noh<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>eV", ":e $MYVIMRC<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>h", ":only<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>m", ":marks<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>sf", ":find<Space>", { noremap = true })
vim.keymap.set("n", "<Leader>st", ":copen<Bar>:grep<Space>", { noremap = true })
vim.keymap.set("n", "<Leader>sV", ":source $MYVIMRC<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>w", ":w<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>q", ":q<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>Q", ":q!<CR>", { noremap = true })

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

vim.keymap.set("v", "'", "c'<Esc>pa'<Esc>")
-- status line
vim.o.statusline = [[%<%f %h%m%r %y%=%{v:register} %-14.(%l,%c%V%) %P]]
