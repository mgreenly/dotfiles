setlocal tabstop=2                 " n columns per tab
setlocal shiftwidth=2              " n columns to indent with << and >>
setlocal expandtab                 " insert spaces for tabs

map <leader>c :exe '!clear && rubocop -a'<CR>
map <leader>t :exe '!clear && rake test -a'<CR>
