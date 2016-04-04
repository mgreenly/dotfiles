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


" color scheme
" 
" This assumes the 'Linux Console' Pallete is being used.
"
" Yes I'm aware it looks like shit.
"
set background=dark

highlight clear

if exists("syntax_on")
  syntax reset
endif

"let g:colors_name = "mgHaskell"

set cursorcolumn          " highlight the cursors column
set cursorline            " highlight the cursors row

" set cross hair highlight for the current column/row
highlight CursorColumn   ctermfg=none  ctermbg=235   cterm=none
highlight CursorLine     ctermfg=none  ctermbg=235   cterm=none
highlight CursorLineNr   ctermfg=239  ctermbg=235   cterm=none
highlight LineNr         ctermfg=239  ctermbg=none   cterm=none

highlight Normal               ctermfg=007 ctermbg=none cterm=none

highlight hsLineComment        ctermfg=239 ctermbg=none cterm=none  
highlight hsBlockComment       ctermfg=239 ctermbg=none cterm=none

highlight hsStatement          ctermfg=214 ctermbg=none cterm=none
highlight hsConditional        ctermfg=214 ctermbg=none cterm=none

highlight hsNumber             ctermfg=038 ctermbg=none cterm=none
highlight hsString             ctermfg=038 ctermbg=none cterm=none
highlight hsCharacter          ctermfg=038 ctermbg=none cterm=none 




"" The status line 
"hi StatusLine            ctermfg=249  ctermbg=232 cterm=none
"hi StatusLineNC          ctermfg=249  ctermbg=249 cterm=none


"highlight hsVarSym             ctermfg=none ctermbg=none cterm=none
"highlight hsConSym             ctermfg=none ctermbg=none cterm=none

"highlight hsType               ctermfg=166 ctermbg=none cterm=none
"highlight hsDelimeter           ctermfg=none ctermbg=none cterm=none


"highlight hsModuleStart        ctermfg=none ctermbg=none cterm=none
"highlight hsModuleStartLabel   ctermfg=none ctermbg=none cterm=none
"highlight hsModuleWhereLabel   ctermfg=none ctermbg=none cterm=none
"highlight hsImportLabel        ctermfg=none ctermbg=none cterm=none
"highlight hsStructure          ctermfg=none ctermbg=none cterm=none
"highlight hsTypedef            ctermfg=none ctermbg=none cterm=none
"highlight hs_hlFunctionName    ctermfg=none ctermbg=none cterm=none

