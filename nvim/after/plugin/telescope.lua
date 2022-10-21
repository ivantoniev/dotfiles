-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
local telescope = require("telescope")
telescope.setup({ defaults = { file_ignore_patterns = {"vendor", "log", "tmp", ".git", "plugged"}}})
telescope.load_extension('fzf')
