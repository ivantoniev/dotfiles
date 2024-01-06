return {
  'nvimtools/none-ls.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local null_ls = require('null-ls')

    null_ls.setup({
      sources = {
        -- null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
      }
    })

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, { silent = true })
    vim.keymap.set('v', '<leader>gf', vim.lsp.buf.format, { silent = true })
  end
}
