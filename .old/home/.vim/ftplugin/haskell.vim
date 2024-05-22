"
" Haskell specific configuration
"
" setup basic options
set expandtab                   " always use spaces instead of tabs
set shiftround                  " round indent to nearest shiftwidth multiple
set autoindent                  " copy indention from previous line
set smartindent                 " 

set tabstop=4                   " display existing tabs as 4 columns wide
set softtabstop=4               " insert 4 spaces when tab is pressed
set shiftwidth=4                " indents, automatic or manual, are 4 spaces

" setup hdevtools
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
