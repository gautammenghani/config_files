syntax on
set tabstop=8
set shiftwidth=8
set ai
set number
set expandtab
set hlsearch
set ruler
set mouse=a
highlight Comment ctermfg=green
set tags+=tags;$HOME
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <C-left> :tabp<cr>
map <C-right> :tabn<cr>

" fzf
nnoremap <C-f> :FZF<CR>

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
