""
"" This assumes the 'Linux Console' Pallete is being used.
""
"" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
""
set background=dark

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "mag256"

"" explicitly set the background color
highlight Normal ctermbg=16

set cursorcolumn          " highlight the cursors column
set cursorline            " highlight the cursors row

"" The current cursor's column
highlight CursorColumn   ctermfg=none  ctermbg=235   cterm=none
"" The current cursor's line.  
highlight CursorLine     ctermfg=none  ctermbg=235   cterm=none
"" The current cursor's line in the number row.
highlight CursorLineNr   ctermfg=239  ctermbg=235   cterm=none
"" The number row
highlight LineNr         ctermfg=239  ctermbg=none   cterm=none


highlight Comment        ctermfg=239 ctermbg=none cterm=none
highlight SpecialComment ctermfg=028 ctermbg=none cterm=none
highlight Statement      ctermfg=214 ctermbg=none cterm=none
highlight Number         ctermfg=038 ctermbg=none cterm=none
highlight String         ctermfg=038 ctermbg=none cterm=none
highlight Float          ctermfg=038 ctermbg=none cterm=none
highlight Character      ctermfg=038 ctermbg=none cterm=none
highlight Todo           ctermfg=052 ctermbg=none cterm=none

highlight hsUnit           ctermfg=1 ctermbg=none cterm=none

"
""hi StatusLine            ctermfg=249  ctermbg=232 cterm=none
""hi StatusLineNC          ctermfg=249  ctermbg=249 cterm=none
""highlight Normal         ctermfg=067 ctermbg=none cterm=none


""
"" some overrides for haskell until I fix the syntax file
""
hi! link hsComment          Comment
hi! link hsLineComment      Comment
hi! link hsConditional      Conditional
hi! link hsStatement        Statement
hi! link hsNumber           Number
hi! link hsFloat            Float
hi! link hsString           String
hi! link hsCharacter        Character
hi! link hsType             Type
hi! link VarId              Identifier
hi! link hsDelimiter        Delimiter
hi! link hsModuleName       Type
hi! link hsModuleStartLabel Include


"" highlight Keyword        ctermfg=1 ctermbg=none cterm=none
"" highlight Macro          ctermfg=1 ctermbg=none cterm=none
"" highlight Structure      ctermfg=1 ctermbg=none cterm=none
"" highlight Type           ctermfg=1 ctermbg=none cterm=none
"" highlight Todo           ctermfg=1 ctermbg=none cterm=none
"" highlight Constant       ctermfg=1 ctermbg=none cterm=none
"" highlight String         ctermfg=1 ctermbg=none cterm=none
"" highlight Character      ctermfg=1 ctermbg=none cterm=none
"" highlight Number         ctermfg=1 ctermbg=none cterm=none
"" highlight Boolean        ctermfg=1 ctermbg=none cterm=none
"" highlight Float          ctermfg=1 ctermbg=none cterm=none
"" highlight Identifier     ctermfg=1 ctermbg=none cterm=none
"" highlight Function       ctermfg=1 ctermbg=none cterm=none
"" highlight Statement      ctermfg=1 ctermbg=none cterm=none
"" highlight Conditional    ctermfg=1 ctermbg=none cterm=none
"" highlight Repeat         ctermfg=1 ctermbg=none cterm=none
"" highlight Label          ctermfg=1 ctermbg=none cterm=none
"" highlight Operator       ctermfg=1 ctermbg=none cterm=none
"" highlight Keyword        ctermfg=1 ctermbg=none cterm=none
"" highlight Exception      ctermfg=1 ctermbg=none cterm=none
"" highlight PreProc        ctermfg=1 ctermbg=none cterm=none
"" highlight Include        ctermfg=1 ctermbg=none cterm=none
"" highlight Define         ctermfg=1 ctermbg=none cterm=none
"" highlight Define         ctermfg=1 ctermbg=none cterm=none
"" highlight Macro          ctermfg=1 ctermbg=none cterm=none
"" highlight Type           ctermfg=1 ctermbg=none cterm=none
"" highlight StorageClass   ctermfg=1 ctermbg=none cterm=none
"" highlight Structure      ctermfg=1 ctermbg=none cterm=none
"" highlight Typeydef       ctermfg=1 ctermbg=none cterm=none
"" highlight Special        ctermfg=1 ctermbg=none cterm=none
"" highlight SpecialChar    ctermfg=1 ctermbg=none cterm=none
"" highlight Tag            ctermfg=1 ctermbg=none cterm=none
"" highlight Delimiter      ctermfg=1 ctermbg=none cterm=none
"" highlight Debug          ctermfg=1 ctermbg=none cterm=none

