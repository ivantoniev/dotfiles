return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "solargraph" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    "github/copilot.vim",
  }
}
