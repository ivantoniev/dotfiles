local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")
  -- Themes
  Plug("folke/tokyonight.nvim", { branch = "main" })
  Plug("mhartington/oceanic-next")
  Plug("drewtempelmeyer/palenight.vim")
  Plug("ayu-theme/ayu-vim")
  Plug("tssm/fairyfloss.vim")
  Plug("rakr/vim-one")

  -- Searching
  Plug('nvim-lua/plenary.nvim')
  Plug('nvim-telescope/telescope.nvim', { tag = "1.1.0" })
  Plug('nvim-telescope/telescope-fzf-native.nvim', { ["do"] = vim.fn["make"] })
  Plug('junegunn/fzf', { ['do'] = vim.fn["fzf#install"] })
  Plug('junegunn/fzf.vim')
  -- Pretty status line
  Plug("vim-airline/vim-airline")

  -- Check if needed or use another LSP thing
  --Plug("w0rp/ale")
  Plug("neovim/nvim-lspconfig") -- Configurations for Nvim LSP
  Plug("neoclide/coc.nvim", { branch = "release" })

  -- Some more git goodness; TODO Do I need this + fugitive?
  Plug("airblade/vim-gitgutter")
  -- Git Blame, but nicer
  Plug("APZelos/blamer.nvim") 
  -- TPope git goodness
  Plug("tpope/vim-fugitive")
  -- TPope sensible defaults
  Plug("tpope/vim-sensible")

  -- Yggdrasil
  Plug("scrooloose/nerdTree") -- old faithfull, might retire
  -- Plug("kyazdani42/nvim-tree.lua")

  -- Vim test runner for multiple langs, replaces thoughbot/vim-rspec
  -- So that tests for multiple langs can be ran
  Plug("vim-test/vim-test")

  -- Syntax highlighting magic
  Plug("nvim-treesitter/nvim-treesitter", { ["do"] = vim.fn[":TSUpdate"] })

  -- For the _very rare_ occassion I come by coffeescript these days
  Plug("kchmck/vim-coffee-script")

  -- Reopen file at last edit position
  Plug("farmergreg/vim-lastplace")

  -- Fold blocks and such, need to play with it
  -- Plug("kevinhwang91/nvim-ufo")

  -- Make Tree pretty, has to be at the end
  -- Plug("ryanoasis/vim-devicons") -- make it pretty
  Plug("kyazdani42/nvim-web-devicons")
vim.call("plug#end")
