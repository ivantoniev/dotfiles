return {
  -- Code Completion
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-copilot' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'hrsh7th/cmp-nvim-lsp' },
  -- Pretty list of troubles (lsp, diagnostics, quickfix, telescope res etc)
  { 'folke/trouble.nvim', dependencies = { 'kyazdani42/nvim-web-devicons' }, lazy = true },
  -- Snippets
  { 'L3MON4D3/LuaSnip', version = '2.*' }, -- snippet engin
  { 'rafamadriz/friendly-snippets' } -- snippets collection
}
