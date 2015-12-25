set background=dark

highligh clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "mag256"

syn keyword schemeKeyword barf

highlight LineNr         ctermfg=234  ctermbg=232 cterm=none
highlight CursorLineNr   ctermfg=243  ctermbg=232 cterm=none
highlight CursorLine     ctermfg=none ctermbg=233 cterm=none
highlight CursorColumn   ctermfg=none ctermbg=233 cterm=none

highlight Normal         ctermfg=110 ctermbg=none cterm=none
highlight schemeSyntax   ctermfg=122 ctermbg=none cterm=none 
highlight schemeFunc     ctermfg=216 ctermbg=none cterm=none
highlight schemeBoolean  ctermfg=13  ctermbg=none cterm=none
highlight schemeComment  ctermfg=238 ctermbg=none cterm=none 

highlight schemeKeyword  ctermfg=10 ctermbg=none cterm=none

highlight link schemeOther Normal
highlight link schemeCharacter schemeBoolean
highlight link schemeString schemeBoolean
highlight link schemeNumber schemeBoolean
highlight link schemeError SchemeBoolean


""hsSpecialChar
""hsSpecialCharError
""hsString
""hsChar
""ConId
""hsVarId

""hsDeclareFunction

""hsModule
""hsStructure
""hsImport
""hsImportMod
""hsConSym
""hsDelim
""hsVarSym
""hsStatement
""hsLineComment


"highlight Normal ctermfg=110 ctermbg=0 cterm=none
""highlight link rubyBlock Normal
""highlight link rubyMethodBlock Normal
""highlight link rubyLocalVariableOrMethod Normal
""highlight link rubyString Normal
""highlight link rubyConditionalExpression Normal
""highlight link rubyControl Normal
""
""highlight rubySymbol ctermfg=214 ctermbg=none cterm=none
""highlight link rubyBlockParameter rubySymbol
""highlight link rubyInterpolation rubySymbol
""highlight link rubyInstanceVariable rubySymbol
""highlight link rubyClassVariable rubySymbol
""highlight link rubyInclude rubySymbol
""highlight link rubyClassDecloration rubySymbol
""highlight link rubyFunction rubySymbol
""highlight link rubyConstant rubySymbol
""
""highlight rubyClass ctermfg=20 ctermbg=none cterm=none
""highlight link RubyDefine rubyClass
""
""highlight rubyArrayLiteral ctermfg=1 ctermbg=none cterm=none
""highlight link rubyArrayDelimiter rubyArrayLiteral
""highlight link rubyStringDelimiter rubyArrayLiteral
""highlight link rubyInterpolationDelimiter rubyArrayLiteral
""
""highlight rubyBoolean ctermfg=11 ctermbg=none cterm=none
""highlight link rubyInteger rubyBoolean
""highlight link rubyPseudoVariable rubyBoolean
""
""highlight vimLineComment ctermfg=238 ctermbg=none cterm=none 
""highlight link rubyComment vimLineComment
""highlight rubyTodo ctermfg=0 ctermbg=226 cterm=none


"" "Clear the colors for any items that you don't like
"" hi clear StatusLine
"" hi clear StatusLineNC
"" 
"" "Set up your new & improved colors
"" hi StatusLine ctermfg=black ctermbg=white
"" hi StatusLineNC ctermfg=LightCyan ctermbg=blue cterm=bold


