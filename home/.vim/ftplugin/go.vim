set listchars=tab:\ \ ,trail:·
set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab!

map <leader>b :GoBuild<CR>
map <leader>c :execute '!clear && go clean -i -x $( expr %:h : "[^/]*/\(.*\)" )'<CR>
map <leader>t :GoTest<CR>
map <leader>T :GoTestFunc<CR>
map <leader>r :silent :exec "!clear" \| :GoRun<CR>

map <leader>j :GoDef<CR>
map <leader>J :b#<CR>

map <leader>l :GoMetaLinter<CR>
