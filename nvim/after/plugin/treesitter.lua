require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = {
      "ruby",
      "lua",
      "html",
      "javascript",
      "css",
      "scss",
      "typescript",
      "json",
      "yaml",
    },
    highlight = {
      enable = true,
      disable = {},
      use_languagetree = true
    },
    indent = {
      enable = false,
      disable = {},
    }
}
