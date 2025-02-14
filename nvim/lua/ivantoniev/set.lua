-- General settings
vim.opt.encoding = "utf-8"
vim.opt.syntax = "enable"

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Or if you have Neovim >= 0.1.5
vim.opt.termguicolors = true

-- Set leader
vim.g.mapleader = ","

vim.opt.filetype = "on" -- required
vim.opt.backspace = "indent,eol,start" -- Backspace in insert mode
vim.opt.history = 1000               -- :cmdline history of commands
vim.opt.showcmd = true                    -- Show incomplete cmds down the bottom
vim.opt.showmode = true                   -- Show current mode down
vim.opt.gcr = "a:blinkon0"             -- Disable cursos blink
vim.opt.autoindent = true

vim.opt.listchars = vim.opt.listchars + "space:·"
vim.opt.list = true
vim.opt.guifont = "MesloLGS Nerd Font Mono:h13"
vim.g.gui_font_size = 13
vim.opt.title = true
vim.opt.updatetime = 100
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.ruler = true
vim.opt.splitbelow = true
vim.opt.splitright = true

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

-- Allow neovim to use global clipboard
vim.opt.clipboard = "unnamedplus"
vim.g.neovide_input_use_logo = 1

-- Allow hidden files in NERDTree
NERDTreeShowHidden=2

-- Make cursor thick
vim.opt.guicursor = ""

-- Nice colors
NVIM_TUI_ENABLE_TRUE_COLOR=1

-- Airline with nice fonts
vim.g.airline_powerline_fonts = 1

vim.opt.cc = "120" -- column at 120 chars
vim.opt.ttyfast = true -- faster scrolling

-- Neovide specifics
vim.g.neovide_cursor_vfx_mode = "railgun" -- use value railgun for cool effect
vim.g.neovide_cursor_animation_length = 0.1
vim.g.neovide_cursor_vfx_particle_phase = 0.8 -- railgun only
vim.g.neovide_cursor_vfx_particle_curl = 1.0 -- railgun only

-- This comes from the vim-better-whitespace plugin
vim.g.strip_whitespace_on_save = 0 -- Strip whitespace on save
-- For this to work we need brew install diffutils as Applediff doesn't seem to support this
vim.g.strip_only_modified_lines = 0 -- Don't strip everything
-- Disable Perl provider
vim.g.loaded_perl_provider = 0

-- Folding settings
vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
