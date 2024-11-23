syntax on
set tabstop=8
set shiftwidth=8
set ai
set number
set hlsearch
set ruler
set signcolumn=no
set nocompatible
set hidden
filetype plugin on
set path+=**
set wildmenu
highlight Comment ctermfg=green
set tags+=tags;$HOME
set splitbelow
set splitright

" mappings
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <C-left> :tabp<cr>
map <C-right> :tabn<cr>
map <C-up> :bp<cr>
map <C-down> :bn<cr>

" aliases
ab gg grep -Irn
ab bb buffer

" highlight spaces
highlight TrailingAndLeadingWhitespaces ctermbg=red
match TrailingAndLeadingWhitespaces /\s\s*$\|^\s\s*/

call plug#begin()
Plug 'tpope/vim-fugitive'
call plug#end()
