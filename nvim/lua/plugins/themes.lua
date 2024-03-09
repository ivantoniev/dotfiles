  -- Themes
return {
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  { 'folke/tokyonight.nvim', lazy = false, priority = 999, opts = {} },
  { 'drewtempelmeyer/palenight.vim' },
  { 'tssm/fairyfloss.vim' },
  { 'mhartington/oceanic-next' },
  { 'ayu-theme/ayu-vim' },
  { 'lunarvim/darkplus.nvim' },
  { 'rakr/vim-one' },
  { 'lunarvim/colorschemes' },
  {'EdenEast/nightfox.nvim'},
  -- UI looks nicer
  { 'stevearc/dressing.nvim' },
  -- Colorize colors
  { 'norcalli/nvim-colorizer.lua' },
  -- Colorize TODO style comments
  { 'folke/todo-comments.nvim' },
    -- Highlight trailing spaces + func to clean them
  { 'ntpeters/vim-better-whitespace' },
  -- Make Tree pretty, has to be at the end
  { 'kyazdani42/nvim-web-devicons', event = "VeryLazy", lazy = true },
}

