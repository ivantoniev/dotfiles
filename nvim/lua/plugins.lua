local plugins = {
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
  -- Nice looking buffer line
  -- { 'akinsho/bufferline.nvim', tag = 'v3.*', requires = 'nvim-tree/nvim-web-devicons' }
  -- For the _very rare_ occassion I come by coffeescript these days
  -- Plug('kchmck/vim-coffee-script')
  -- Markdown preview stuff
  -- use({ 'iamcco/markdown-preview.nvim', run = 'cd app && npm install', setup = function() vim.g.mkdp_filetypes = { 'markdown' } end, ft = { 'markdown' }, })
  -- manage working files atm
  { 'ThePrimeagen/harpoon', lazy = true },
  -- Nicer in-file searching
  { 'romainl/vim-cool' },
  -- TPope sensible defaults
  'tpope/vim-sensible',
  -- Yggdrasil
  -- Potentially change nerdtree for nvimtree for a bit of speedup
  'scrooloose/nerdTree',
  -- Vim test runner for multiple langs, replaces thoughbot/vim-rspec
  -- So that tests for multiple langs can be ran
  'vim-test/vim-test',
  -- Reopen file at last edit position
  'farmergreg/vim-lastplace',
  -- Matchup language specific expressions eg while->end
  { 'andymass/vim-matchup', event = 'VimEnter' },
  { 'stevearc/conform.nvim', lazy = true, opts = {} },
  { 'shortcuts/no-neck-pain.nvim', lazy = true },
}
return plugins
