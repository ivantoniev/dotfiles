-- General settings
vim.opt.encoding = "utf-8"
vim.opt.syntax = "enable"

vim.opt.filetype = "on" -- required
vim.opt.backspace = "indent,eol,start" -- Backspace in insert mode
vim.opt.history = 1000               -- :cmdline history of commands
vim.opt.showcmd = true                    -- Show incomplete cmds down the bottom
vim.opt.showmode = true                   -- Show current mode down
vim.opt.gcr = "a:blinkon0"             -- Disable cursos blink

vim.opt.listchars = vim.opt.listchars + "space:·"
vim.opt.list = true
vim.opt.guifont = "Monaco:h14"
vim.opt.title = true
vim.opt.updatetime = 100
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.ruler = true
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Make cursor thick
vim.opt.guicursor = ""

-- Line numbers + relative
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs vs spaces
vim.opt.tabstop = 2 
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.hlsearch = true

vim.opt.smartindent = true

-- no wrapping lines
vim.opt.wrap = false

-- hide buffers, so that VIM looks more normal
vim.opt.hidden = true

-- No sounds, just visual
vim.opt.visualbell = true

-- Set leader
vim.g.mapleader = ","

local NERDTreeShowHidden=2
NVIM_TUI_ENABLE_TRUE_COLOR=1
