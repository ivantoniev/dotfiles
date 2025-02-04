local plugins = {
  -- Nice looking buffer line
  -- { 'akinsho/bufferline.nvim', tag = 'v3.*', requires = 'nvim-tree/nvim-web-devicons' }
  -- For the _very rare_ occassion I come by coffeescript these days
  -- Plug('kchmck/vim-coffee-script')
  -- Markdown preview stuff
  -- use({ 'iamcco/markdown-preview.nvim', run = 'cd app && npm install', setup = function() vim.g.mkdp_filetypes = { 'markdown' } end, ft = { 'markdown' }, })
  -- manage working files atm
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()
    end
  },
  -- Nicer in-file searching
  { 'romainl/vim-cool' },
  -- TPope sensible defaults
  'tpope/vim-sensible',
  -- Yggdrasil
  -- Potentially change nerdtree for nvimtree for a bit of speedup
  'scrooloose/nerdTree',
  -- Vim test runner for multiple langs, replaces thoughbot/vim-rspec
  -- So that tests for multiple langs can be ran
  'vim-test/vim-test',
  -- Reopen file at last edit position
  'farmergreg/vim-lastplace',
  -- Matchup language specific expressions eg while->end
  { 'andymass/vim-matchup', event = 'VimEnter' },
  { 'stevearc/conform.nvim', lazy = true, opts = {} },
  { 'shortcuts/no-neck-pain.nvim',
    lazy = true,
    config = function()
      require('no-neck-pain').setup({})
    end
  },

  {
    'folke/noice.nvim',
    event='VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      -- 'rcarriga/nvim-notify'
    },
    config = function()
      require("noice").setup({
        lsp = {
          -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
          },
        },
        -- you can enable a preset for easier configuration
        presets = {
          bottom_search = true, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },
        routes = {
          {
            view = "notify",
            filter = { event = "msg_showmode" },
          },
        },
      })
    end
  }
}
return plugins
