  -- Folding
 return {
    'kevinhwang91/nvim-ufo',
    dependencies = { 'kevinhwang91/promise-async' },
    lazy = true,
    config = function()
      -- Setup folding based on treesitter
      require('ufo').setup({
        provider_selector = function(bufnr, filetype, buftype)
            return {'treesitter', 'indent'}
        end
      })
    end
  }

