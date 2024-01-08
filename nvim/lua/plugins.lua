local plugins = {
  -- plenary has some useful libs that other plugs use
  -- 'nvim-lua/plenary.nvim',

  -- Themes
  { 'folke/tokyonight.nvim', lazy = false, priority = 999, opts = {} },
  'drewtempelmeyer/palenight.vim',
  'tssm/fairyfloss.vim',
  'mhartington/oceanic-next',
  'ayu-theme/ayu-vim',
  'lunarvim/darkplus.nvim',
  'rakr/vim-one',
  'lunarvim/colorschemes',
  'EdenEast/nightfox.nvim',

  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  },
  -- Possible key bindings for started command
  -- {
  --  "folke/which-key.nvim",
  --  event = "VeryLazy",
  --  init = function()
  --    vim.o.timeout = true
  --    vim.o.timeoutlen = 300
  --  end,
  --  opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
  --   }
  -- },

  { 'ThePrimeagen/harpoon', lazy = true },

  -- Nicer in-file searching
  { 'romainl/vim-cool' },
  -- LSP and completion
  'neovim/nvim-lspconfig', -- Configurations for Nvim LS
  'github/copilot.vim', -- Copilot
  -- LSP installs more easily and nicely
  {
    "williamboman/mason.nvim"
  },

  -- Code Completion
  'hrsh7th/nvim-cmp', -- The completion plugi
  'hrsh7th/cmp-buffer', -- Buffer completion
  'hrsh7th/cmp-copilot', -- Copilot completion
  'hrsh7th/cmp-path', -- Path completion
  'hrsh7th/cmp-cmdline', -- cmdline completion
  'saadparwaiz1/cmp_luasnip', -- snippet completion
  'hrsh7th/cmp-nvim-lsp', -- LSP completion
  -- Pretty list of troubles (lsp, diagnostics, quickfix, telescope res etc)
  { 'folke/trouble.nvim', dependencies = { 'kyazdani42/nvim-web-devicons' }, lazy = true },
  -- Snippets
  { 'L3MON4D3/LuaSnip', version = '2.*' }, -- snippet engin
  'rafamadriz/friendly-snippets', -- a collection of snippet

  -- UI looks nicer
  'stevearc/dressing.nvim',
  -- Nice looking buffer line
  -- { 'akinsho/bufferline.nvim', tag = 'v3.*', requires = 'nvim-tree/nvim-web-devicons' }

  -- Highlight trailing spaces + func to clean them
  'ntpeters/vim-better-whitespace',

  -- Git in vim
  'tpope/vim-fugitive',
  -- Git Blame, but nicer
  'APZelos/blamer.nvim',

  -- TPope sensible defaults
  'tpope/vim-sensible',

  -- Yggdrasil
  -- Potentially change nerdtree for nvimtree for a bit of speedup
  'scrooloose/nerdTree',

  -- Vim test runner for multiple langs, replaces thoughbot/vim-rspec
  -- So that tests for multiple langs can be ran
  'vim-test/vim-test',

  -- For the _very rare_ occassion I come by coffeescript these days
  -- Plug('kchmck/vim-coffee-script')

  -- Reopen file at last edit position
  'farmergreg/vim-lastplace',

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

  { 'stevearc/conform.nvim', lazy = true, opts = {} },
  {
    'kylechui/nvim-surround',
    version = '*',
    event = "VeryLazy",
    config = function()
        require('nvim-surround').setup({})
    end
  },
  { 'shortcuts/no-neck-pain.nvim', lazy = true },
}
return plugins
