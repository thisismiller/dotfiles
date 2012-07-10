set nocompatible
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set encoding=utf-8
filetype plugin indent on

" Better searching.
set smartcase
set incsearch
set hlsearch

" Show a list when autocompleteing
set wildmode=longest,list
set wildmenu

" Should belong in ftplugin/tex.vim, but it needs to run before syntax/tex.vim
let g:tex_conceal="adgm"

map <Leader>make :w \| make! \| cwindow<CR>
