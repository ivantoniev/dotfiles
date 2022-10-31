local fn = vim.fn

-- Auto install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  })
  print 'Installing packer, close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim when the plugins.lua file is changed and saved
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
}

-- Install plugins here
return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- packer itself
  use 'nvim-lua/popup.nvim' -- popup for packer, ported from vim
  -- plenary has some useful libs that other plugs use
  use 'nvim-lua/plenary.nvim'

  -- Themes
  use { "folke/tokyonight.nvim", branch = "main" }
  use "drewtempelmeyer/palenight.vim"
  use "tssm/fairyfloss.vim"
  use "mhartington/oceanic-next"
  use "ayu-theme/ayu-vim"
  use "lunarvim/darkplus.nvim"
  use "rakr/vim-one"
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use "lunarvim/colorschemes"

  -- Searching
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Nicer in-file searching
  use "romainl/vim-cool"
  -- Pretty status line - move to lualine
  -- Plug("vim-airline/vim-airline")

  -- Treesitter better syntax higlight, other parsing goodness
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- LSP and completion
  use "neovim/nvim-lspconfig" -- Configurations for Nvim LS
  use "github/copilot.vim" -- Copilo

  -- Code Completion
  use "hrsh7th/nvim-cmp" -- The completion plugi
  use "hrsh7th/cmp-buffer" -- Buffer completion
  use "hrsh7th/cmp-copilot" -- Copilot completion
  use "hrsh7th/cmp-path" -- Path completion
  use "hrsh7th/cmp-cmdline" -- cmdline completion
  use "saadparwaiz1/cmp_luasnip" -- snippet completion
  use "hrsh7th/cmp-nvim-lsp" -- LSP completion

  -- Snippets
  use { 'L3MON4D3/LuaSnip', tag = 'v1.1.0' } -- snippet engin
  use "rafamadriz/friendly-snippets" -- a collection of snippet

  -- Highlight trailing spaces + func to clean them
  use "ntpeters/vim-better-whitespace"

  -- Commenting like a normal editor + motions
  use 'numToStr/Comment.nvim'

  -- Git Blame, but nicer
  use "APZelos/blamer.nvim"

  -- TPope sensible defaults
  use "tpope/vim-sensible"

  -- Yggdrasil
  -- Potentially change nerdtree for nvimtree for a bit of speedup
  use "scrooloose/nerdTree"
  -- Plug('nvim-tree/nvim-tree.lua')

  -- Vim test runner for multiple langs, replaces thoughbot/vim-rspec
  -- So that tests for multiple langs can be ran
  use "vim-test/vim-test"

  -- For the _very rare_ occassion I come by coffeescript these days
  -- Plug("kchmck/vim-coffee-script")

  -- Reopen file at last edit position
  use "farmergreg/vim-lastplace"

  -- Fold blocks and such, need to play with it
  -- Plug("kevinhwang91/nvim-ufo")

  -- Markdown preview stuff
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- Matchup language specific expressions eg while->end
  use { 'andymass/vim-matchup', event = 'VimEnter' }

  -- Make Tree pretty, has to be at the end
  use "kyazdani42/nvim-web-devicons"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
