local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")
  -- Plenary has some useful libs that other plugs use
  Plug('nvim-lua/plenary.nvim')

  -- Themes
  Plug("folke/tokyonight.nvim", { branch = "main" })
  Plug("drewtempelmeyer/palenight.vim")
  Plug("tssm/fairyfloss.vim")
  Plug("mhartington/oceanic-next")
  Plug("ayu-theme/ayu-vim")
  Plug("rakr/vim-one")
  Plug('catppuccin/nvim', { as = 'catppuccin' })

  -- Searching
  Plug('nvim-telescope/telescope.nvim', { tag = "1.1.0" })
  Plug('nvim-telescope/telescope-fzf-native.nvim', { ["do"] = vim.fn["make"] })
  
  -- Nicer in-file searching
  Plug("romainl/vim-cool")
  -- Pretty status line
  -- Plug("vim-airline/vim-airline")

  -- Treesitter better syntax higlight, other parsing goodness
  Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

  -- LSP and completion
  -- Plug("neovim/nvim-lspconfig") -- Configurations for Nvim LSP
  -- Plug("github/copilot.vim") -- Copilot

  -- Highlight trailing spaces + func to clean them
  Plug("ntpeters/vim-better-whitespace")

  -- Commenting like a normal editor + motions
  Plug('numToStr/Comment.nvim')

  -- Git Blame, but nicer
  -- Plug("APZelos/blamer.nvim") 

  -- TPope sensible defaults
  Plug("tpope/vim-sensible")

  -- Yggdrasil
  -- Potentially change nerdtree for nvimtree for a bit of speedup
  Plug("scrooloose/nerdTree")
  -- Plug('nvim-tree/nvim-tree.lua')

  -- Vim test runner for multiple langs, replaces thoughbot/vim-rspec
  -- So that tests for multiple langs can be ran
  Plug("vim-test/vim-test")

  -- For the _very rare_ occassion I come by coffeescript these days
  -- Plug("kchmck/vim-coffee-script")

  -- Reopen file at last edit position
  Plug("farmergreg/vim-lastplace")

  -- Fold blocks and such, need to play with it
  -- Plug("kevinhwang91/nvim-ufo")

  -- Make Tree pretty, has to be at the end
  Plug("kyazdani42/nvim-web-devicons")
vim.call("plug#end")

