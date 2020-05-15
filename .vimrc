set nocompatible
filetype off


call plug#begin()

Plug 'vim-scripts/a.vim'
"Plug 'Valloric/YouCompleteMe'
"Plugin 'neoclide/coc.nvim'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'prabirshrestha/async.vim'
"Plugin 'prabirshrestha/vim-lsp'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/DrawIt'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

call plug#end()


filetype plugin indent on
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set encoding=utf-8

" Better searching.
set smartcase
set incsearch
set hlsearch

" Show a list when autocompleteing
set wildmode=longest,list
set wildmenu

" Dark terminals
set background=dark

" Sane vimdiff colors
hi DiffAdd ctermbg=235 ctermfg=108 cterm=reverse guibg=#262626 guifg=#87af87 gui=reverse
hi DiffChange ctermbg=235 ctermfg=103 cterm=reverse guibg=#262626 guifg=#8787af gui=reverse
hi DiffDelete ctermbg=235 ctermfg=131 cterm=reverse guibg=#262626 guifg=#af5f5f gui=reverse
hi DiffText ctermbg=235 ctermfg=208 cterm=reverse guibg=#262626 guifg=#ff8700 gui=reverse

" Should belong in ftplugin/tex.vim, but it needs to run before syntax/tex.vim
let g:tex_conceal="adgm"

" :set list to show tabs and whitespace
:set listchars=tab:\|\ ,trail:$

nnoremap <Leader>ag :Ag <C-R><C-W><CR>

set updatetime=300

nmap <Leader>gd <Plug>(coc-declaration)
nmap <Leader>gt <Plug>(coc-definition)
nmap <Leader>gT <Plug>(coc-implementation)
nmap <Leader>gr <Plug>(coc-references)

nnoremap <Leader>st :call CocActionAsync('doHover')<cr>
nnoremap <Leader>sT :call CocActionAsync('showSignatureHelp')<cr>
nnoremap <C-g> <ESC>

map <Leader>make :w \| make! \| cwindow<CR>
