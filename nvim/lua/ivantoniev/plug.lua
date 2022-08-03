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
  Plug('nvim-telescope/telescope.nvim', { tag = '1.1.0' })

  -- Potentially deprecate if telescope is cool
  -- Plug("ctrlpvim/ctrlp.vim")
  -- Plug("junegunn/fzf", { ["do"] = vim.fn["fzf#install"] })
  -- Plug("junegunn/fzf.vim")

  -- Pretty status line
  Plug("vim-airline/vim-airline")

  -- Check if needed or use another LSP thing
  --Plug("w0rp/ale")

  -- Some more git goodness; TODO Do I need this + fugitive?
  Plug("airblade/vim-gitgutter")
  -- Git Blame, but nicer
  Plug("APZelos/blamer.nvim") 
  -- TPope git goodness
  Plug("tpope/vim-fugitive")
  -- TPope sensible defaults
  Plug("tpope/vim-sensible")

  -- Yggdrasil
  Plug("scrooloose/nerdTree")

  -- Vim test runner for multiple langs, replaces thoughbot/vim-rspec
  -- So that tests for multiple langs can be ran
  Plug("vim-test/vim-test")

  -- For the _very rare_ occassion I come by coffeescript these days
  Plug("kchmck/vim-coffee-script")

  -- Reopen file at last edit position
  Plug("farmergreg/vim-lastplace")

  -- Fold blocks and such, need to play with it
  Plug("kevinhwang91/nvim-ufo")
vim.call("plug#end")
