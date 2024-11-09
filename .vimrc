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
map <C-left> :tabp<cr>
map <C-right> :tabn<cr>
set signcolumn=no

" fzf
nnoremap <C-f> :FZF<CR>

" YCM
map <leader>d :YcmCompleter GoToDefinition<cr>
map <leader>n :tab split \| YcmCompleter GoToDefinition<cr>
map <leader>i :YcmCompleter GoToImplementation<cr>
let g:ycm_clangd_binary_path='/usr/bin/clangd'

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ycm-core/YouCompleteMe'
call plug#end()
