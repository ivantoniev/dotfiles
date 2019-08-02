set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
set number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set listchars+=space:·
set list
set guifont=Monaco:h14
set title
set updatetime=100
set noswapfile
set nobackup
set ruler
set splitbelow
set splitright
set visualbell
set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/vundles/ "Submodules
call vundle#rc()
runtime ruby.vundle
"runtime languages.vundle
"runtime git.vundle
"runtime appearance.vundle
"runtime textobjects.vundle
"runtime search.vundle
"runtime project.vundle
"runtime vim-improvements.vundle

call vundle#begin()
"Bundle \"gmarik/vundle\"
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'mhartington/oceanic-next'
Plugin 'scrooloose/nerdTree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'thoughtbot/vim-rspec'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-airline/vim-airline'
Plugin 'w0rp/ale'
call vundle#end()
syntax enable
filetype plugin indent on
" To ignore plugin indent changes, instead use:
" filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" Put your non-Plugin stuff after this line

"allow grep to search with the-silver-searcher
if executable('ag')
  " Note we extract the column as well as the file and line number
  set grepprg=ag\ --column
  set grepformat=%f:%l:%m
  "let g:ctrlp_user_command = 'ag %s -l -g ""'
endif

if (has("termguicolors"))
  set termguicolors
endif
colorscheme OceanicNext

"rspec for vim
map ,r :call RunCurrentSpecFile()<CR>
map ,s :call RunNearestSpec()<CR>
map ,e :call RunLastSpec()<CR>
map ,t :call RunAllSpecs()<CR>

"autoclose brackets
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

"navigate splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"toggle tree and show file in tree
nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>

"Autocomplete
imap <S-Tab> <C-P>

"allow searching with ctrlp
let g:cmdp_cmd = 'CtrlP'
"vim rspec use iterm2
let g:rspec_runner = "os_x_iterm2"
"ctrlp to open in new tab
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

"These are needed so ctrlp works with big nested codebase
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_working_path_mode = ''

"ALE gotodef
let g:ale_completion_enabled = 1
