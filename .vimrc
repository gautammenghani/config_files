syntax on
set tabstop=8
set shiftwidth=8
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green
set tags+=tags;$HOME
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

