set background=dark

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "mag256"

highlight Normal           ctermfg=7    ctermbg=16    guifg=#c0c0c0  guibg=#000000
highlight Comment          ctermfg=253  ctermbg=none  guifg=#787878  guibg=none
highlight SpecialComment   ctermfg=253  ctermbg=none  guifg=#787878  guibg=none
highlight Statement        ctermfg=214  ctermbg=none  guifg=#ffaf00  guibg=none
highlight Number           ctermfg=38   ctermbg=none  guifg=#00afd7  guibg=none
highlight String           ctermfg=38   ctermbg=none  guifg=#00afd7  guibg=none
highlight Float            ctermfg=38   ctermbg=none  guifg=#00afd7  guibg=none
highlight Character        ctermfg=38   ctermbg=none  guifg=#00afd7  guibg=none
highlight Todo             ctermfg=52   ctermbg=none  guifg=#00afd7  guibg=none

highlight StatusLine      ctermfg=0     ctermbg=232   guifg=#000000  guibg=#b2b2b2
highlight StatusLineNC    ctermfg=249   ctermbg=249   guifg=#b2b2b2  guibg=#b2b2b2

set cursorcolumn
set cursorline

highlight CursorColumn     ctermfg=none  ctermbg=235  guifg=none     guibg=#262626
highlight CursorLine       ctermfg=none  ctermbg=235  guifg=none     guibg=#262626
highlight CursorLineNr     ctermfg=239   ctermbg=235  guifg=#4e4e4e  guibg=#262626
highlight Linenr           ctermfg=239   ctermbg=0    guifg=#4e4e4e  guibg=none
highlight ColorColumn      ctermfg=none  ctermbg=235  guifg=none     guibg=#262626

highlight ColorColumn      ctermfg=none  ctermbg=235  guifg=none     guibg=#262626j

highlight link shDerefSimple shDoubleQuote
highlight link kshSpecialVariables Variable
