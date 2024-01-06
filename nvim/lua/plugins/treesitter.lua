-- Treesitter better syntax higlight, other parsing goodness
return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { "ruby", "lua", "html", "javascript", "typescript", "css", "scss" },
      highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = true,
      },
      auto_install = true,
      indent = { enable = true, disable = { "yaml" } }
    })
  end
}
