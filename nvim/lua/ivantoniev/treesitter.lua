require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "ruby", "lua", "html", "javascript", "css", "scss" },
    highlight = {
      enable = true,
      use_languagetree = true
    }
}
