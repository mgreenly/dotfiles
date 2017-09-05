
set tabstop=2                 " n columns per tab
set shiftwidth=2              " n columns to indent with << and >>
set expandtab                 " insert spaces for tabs
set listchars=tab:··,trail:⎵  ""show tab and trailing whitespace

"
"" run rubocoap on current file
map <leader>c :exe '!clear && rubocop -a '.@%<CR>
"" run rubocop on all files
map <leader>C :exe '!clear && rubocop -a'<CR>

"" run tests on current file
map <leader>t :exe '!clear && bundle exec ruby -Ilib:test '.@%<CR>
"" run tests on all files
map <leader>T :exe '!clear && bundle exec rake test'<CR>
