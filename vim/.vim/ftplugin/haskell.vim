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


"" color scheme
"" 
"" This assumes the 'Linux Console' Pallete is being used.
""
"" Yes I'm aware it looks like shit.
""
set background=dark

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "mgHaskell"

set cursorcolumn          " highlight the cursors column
set cursorline            " highlight the cursors row

set number                " show linenumber
set numberwidth=4         " set the number width

"" The current cursor's column
highlight CursorColumn   ctermfg=none  ctermbg=235   cterm=none
"" The current cursor's line.  
highlight CursorLine     ctermfg=none  ctermbg=235   cterm=none
"" The current cursor's line in the number row.  
highlight CursorLineNr   ctermfg=239  ctermbg=235   cterm=none
"" The number row
highlight LineNr         ctermfg=239  ctermbg=none   cterm=none

"" The status line 
""hi StatusLine            ctermfg=249  ctermbg=232 cterm=none
""hi StatusLineNC          ctermfg=249  ctermbg=249 cterm=none


""highlight Normal         ctermfg=067 ctermbg=none cterm=none

highlight hsLineComment  ctermfg=241 ctermbg=none cterm=none  
highlight hsBlockComment ctermfg=241 ctermbg=none cterm=none

""highlight hsModule           
""highlight hsModuleName
""highlight hsModuleStart
""highlight hsModuleWhereLabel
""highlight hsImport
""highlight hsImportLabel
""highlight hsImportParams
""highlight hsStructure
""highlight hsImport
""highlight hsImportMod
""highlight hsImportLabel
""highlight hsConSym
""highlight hsDelim
""highlight hsVarSym
""highlight hsStatement
""highlight hsLineComment
""highlight hsType
""highlight hsSpecialChar
""highlight hsSpecialCharError
""highlight hsString
""highlight hsChar
""highlight ConId
""highlight VarId
""highlight hsVarId
""highlight hsDeclareFunction
""highlight hs_Function
""highlight hs_FunctionName
""highlight hs_hlFunctionName

