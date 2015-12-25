" Tab specific option

set tabstop=8                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple

let s:width = 80


"
" set the leader key
let mapleader=","

"
"
"map <leader>r :execute '!clear && runghc %'<CR>
"map <leader>m :execute '!clear && make'<CR>
"map <leader>c :execute '!clear && make clobber'<CR>
"map <leader>i :execute '!clear && ghci -isrc %'<CR>
map <leader>r :execute '!clear && cabal run'<CR>
map <leader>i :execute '!clear && cabal repl'<CR>
map <leader>c :execute '!clear && cabal clean'<CR>
map <leader>b :execute '!clear && cabal build'<CR>
