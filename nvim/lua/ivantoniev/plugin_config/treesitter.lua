require('nvim-treesitter.configs').setup {
  ensure_installed = { "ruby", "lua", "html", "javascript", "typescript", "css", "scss" },
  highlight = {
    enable = true
  }
}
