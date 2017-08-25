setlocal tabstop=4
setlocal shiftwidth=4


"
" assign go commands to keys
"
"    build       compile packages and dependencies
"    clean       remove object files
"    env         print Go environment information
"    fix         run go tool fix on packages
"    fmt         run gofmt on package sources
"    get         download and install packages and dependencies
"    install     compile and install packages and dependencies
"    list        list packages
"    run         compile and run Go program
"    test        test packages
"    tool        run specified go tool
"    version     print Go version
"    vet         run go tool vet on packages
"
map <leader>c :execute '!clear && go clean -i -x $( expr %:h : "[^/]*/\(.*\)" )'<CR>
map <leader>e :execute '!clear && go env'<CR>
map <leader>f :execute '!clear && gofmt -s -w ./'<CR>
map <leader>i :execute '!clear && goimports -w $(expr %)'<CR>
map <leader>g :execute '!clear && go get $( expr %:h : "[^/]*/\(.*\)" )'<CR>
map <leader>r :execute '!clear && go run $(expr %)'<CR>
map <leader>t :execute '!clear && go test $( expr %:h : "[^/]*/\(.*\)" )'<CR>
map <leader>v :execute '!clear && go version'<CR>
