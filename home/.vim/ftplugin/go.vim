set tabstop=4
set shiftwidth=4
set noexpandtab
set nolist!

""set listchars=trail:⎵

map <leader>b :execute '!clear && go build -v'<CR>
map <leader>c :execute '!clear && go clean -i -x $( expr %:h : "[^/]*/\(.*\)" )'<CR>
map <leader>e :execute '!clear && go env'<CR>
map <leader>f :execute '!clear && gofmt -s -w ./'<CR>
map <leader>g :execute '!clear && go get $( expr %:h : "[^/]*/\(.*\)" )'<CR>
map <leader>i :execute '!clear && goimports -w $(expr %)'<CR>
map <leader>r :execute '!clear && go run $(expr %)'<CR>
map <leader>t :execute '!clear && go test $( expr %:h : "[^/]*/\(.*\)" )'<CR>
map <leader>v :execute '!clear && go version'<CR>
