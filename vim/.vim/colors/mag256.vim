""
"" This assumes the 'Linux Console' Pallete is being used.
""
""
set background=dark

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "mag256"

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

""hsModule
""hsModuleName
""hsModuleStart
""hsModuleWhereLabel
""hsImport
""hsImportLabel
""hsImportParams
""hsStructure
""hsImport
""hsImportMod
""hsImportLabel
""hsConSym
""hsDelim
""hsVarSym
""hsStatement
""hsLineComment
""hsType
""hsSpecialChar
""hsSpecialCharError
""hsString
""hsChar
""ConId
""VarId
""hsVarId
""hsDeclareFunction
""hs_Function
""hs_FunctionName
""hs_hlFunctionName

