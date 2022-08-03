local nnoremap = require("ivantoniev.keymap").nnoremap
local inoremap = require("ivantoniev.keymap").inoremap
local nmap = require("ivantoniev.keymap").nmap

-- Navigate splits
nnoremap("<C-J>", "<C-W><C-J>")
nnoremap("<C-K>", "<C-W><C-K>")
nnoremap("<C-L>", "<C-W><C-L>")
nnoremap("<C-H>", "<C-W><C-H>")

-- Autoclose brackets
inoremap("{<cr>", "{<cr>}<c-o><s-o>")
inoremap("[<cr>", "[<cr>]<c-o><s-o>")
inoremap("(<cr>", "(<cr>)<c-o><s-o>")

-- Toggle NERDTree and show current file in tree
nmap(",n", ":NERDTreeFind<CR>")
nmap(",m", ":NERDTreeToggle<CR>")

-- RSpec for vim
nmap("<leader>s", ":TestNearest<CR>")
nmap("<leader>r", ":TestFile<CR>")
nmap("<leader>t", ":TestSuite<CR>")
nmap("<leader>e", ":TestLast<CR>")
nmap("<leader>g", ":TestVisit<CR>")

-- Autocomplete
-- vim.api.nvim_set_keymap("i", "<S-Tab>", "<C-P>")

-- Find files with telescope
nnoremap("<leader>ff", "<cmd>Telescope find_files hidden=true<cr>")
nnoremap("<C-p>", "<cmd>Telescope find_files hidden=true<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")

