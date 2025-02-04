-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.4',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release"
    },
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          "vendor", "log", "tmp", ".git", "plugged"
        }
      }
    })
    telescope.load_extension('fzf')
  end
}
