map <F3> :NERDTreeToggle \| :silent NERDTreeMirror<CR>
autocmd BufEnter * NERDTreeMirror

autocmd VimEnter * wincmd w

au BufRead *.php set ft=php.html
au BufNewFile *.php set ft=php.html


au BufRead *.html.erb set ft=rb.html
au BufNewFile *.html.erb set ft=rb.html

:set autoindent
map <C-p> :set noautoindent<CR>

set smarttab

set showmatch
set mat=5
set expandtab
set shiftwidth=4
set softtabstop=4

nnoremap <F5> :buffers<CR>


map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-k> :bp<CR>
map <C-j> :bn<CR>

map <C-f> :tabe **/


map <F2> <C-w><C-w> <CR>

:source ~/.vim/plugin/matchit.vim

:filetype plugin on

