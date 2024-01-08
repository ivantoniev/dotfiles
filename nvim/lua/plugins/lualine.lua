-- Pretty status line - move to lualine
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'kyazdani42/nvim-web-devicons' },
  lazy = true,
  config = function()
    require('lualine').setup({
      options = { theme = 'dracula' }
    })
  end
}
