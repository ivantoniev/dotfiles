require('nvim-treesitter.configs').setup {
  ensure_installed = { "ruby", "lua", "html", "javascript", "typescript", "css", "scss" },
  highlight = {
    enable = true,
    disable = { "ruby" },
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
}
