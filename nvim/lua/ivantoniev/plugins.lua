local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- plenary has some useful libs that other plugs use
  'nvim-lua/plenary.nvim',

  -- Themes
  { 'folke/tokyonight.nvim', lazy = false, priority = 1000, opts = {} },
  'drewtempelmeyer/palenight.vim',
  'tssm/fairyfloss.vim',
  'mhartington/oceanic-next',
  'ayu-theme/ayu-vim',
  'lunarvim/darkplus.nvim',
  'rakr/vim-one',
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  'lunarvim/colorschemes',
  'EdenEast/nightfox.nvim',
  -- Searching
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  },
  -- Possible key bindings for started command
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },

  'ThePrimeagen/harpoon',

  -- Nicer in-file searching
  'romainl/vim-cool',
  -- Pretty status line - move to lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    lazy = true
  },
  -- Treesitter better syntax higlight, other parsing goodness
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },

  -- LSP and completion
  'neovim/nvim-lspconfig', -- Configurations for Nvim LS
  'github/copilot.vim', -- Copilo

  -- Code Completion
  'hrsh7th/nvim-cmp', -- The completion plugi
  'hrsh7th/cmp-buffer', -- Buffer completion
  'hrsh7th/cmp-copilot', -- Copilot completion
  'hrsh7th/cmp-path', -- Path completion
  'hrsh7th/cmp-cmdline', -- cmdline completion
  'saadparwaiz1/cmp_luasnip', -- snippet completion
  'hrsh7th/cmp-nvim-lsp', -- LSP completion
  'jose-elias-alvarez/null-ls.nvim', -- Better bridge between nvim lsp and lang servers
  -- Pretty list of troubles (lsp, diagnostics, quickfix, telescope res etc)
  { 'folke/trouble.nvim', dependencies = { 'kyazdani42/nvim-web-devicons' } },
  -- Snippets
  { 'L3MON4D3/LuaSnip', tag = 'v1.1.0' }, -- snippet engin
  'rafamadriz/friendly-snippets', -- a collection of snippet

  -- UI looks nicer
  'stevearc/dressing.nvim',
  -- Nice looking buffer line
  -- { 'akinsho/bufferline.nvim', tag = 'v3.*', requires = 'nvim-tree/nvim-web-devicons' }

  -- Highlight trailing spaces + func to clean them
  'ntpeters/vim-better-whitespace',

  -- Commenting like a normal editor + motions
  'numToStr/Comment.nvim',

  -- Git Blame, but nicer
  'APZelos/blamer.nvim',

  -- TPope sensible defaults
  'tpope/vim-sensible',

  -- Yggdrasil
  -- Potentially change nerdtree for nvimtree for a bit of speedup
  'scrooloose/nerdTree',
  -- Plug('nvim-tree/nvim-tree.lua')

  -- Vim test runner for multiple langs, replaces thoughbot/vim-rspec
  -- So that tests for multiple langs can be ran
  'vim-test/vim-test',

  -- For the _very rare_ occassion I come by coffeescript these days
  -- Plug('kchmck/vim-coffee-script')

  -- Reopen file at last edit position
  'farmergreg/vim-lastplace',

  -- Fold blocks and such, need to play with it
  -- Plug('kevinhwang91/nvim-ufo')

  -- Markdown preview stuff
  -- use({ 'iamcco/markdown-preview.nvim', run = 'cd app && npm install', setup = function() vim.g.mkdp_filetypes = { 'markdown' } end, ft = { 'markdown' }, })

  -- Matchup language specific expressions eg while->end
  { 'andymass/vim-matchup', event = 'VimEnter' },
  
  -- Colorize colors
  'norcalli/nvim-colorizer.lua',
  -- Colorize TODO style comments
  'folke/todo-comments.nvim',

  -- Make Tree pretty, has to be at the end
  'kyazdani42/nvim-web-devicons',
}

local opts = {}

require('lazy').setup(plugins, opts)
