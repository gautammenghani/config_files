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

" set grep to use rg
set grepprg=rg\ --vimgrep

" mappings
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <C-left> :tabp<cr>
map <C-right> :tabn<cr>
map <C-up> :bp<cr>
map <C-down> :bn<cr>
map <A-up> :lp<cr>
map <A-down> :lne<cr>

" command abbrev
ca ln lne 

" aliases
ab gg grep
ab lgg lgrep
ab bb buffer

" cscope
nmap <Leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <Leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <Leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>a :cs find a <C-R>=expand("<cword>")<CR><CR>

" highlight spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/
