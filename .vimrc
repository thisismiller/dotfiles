set nocompatible
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set encoding=utf-8
filetype plugin indent on

set incsearch
set hlsearch

" Should belong in ftplugin/tex.vim, but it needs to run before syntax/tex.vim
let g:tex_conceal="adgm"

map <Leader>make :w \| make! \| cwindow<CR>
