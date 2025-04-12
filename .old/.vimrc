set nocompatible              "" behave like vim not vi

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"" set termguicolors
colorscheme mag256

let mapleader=","

set encoding=utf8             " show utf8 encoding
set fileencoding=utf8         " save files with utf8 encoding
set tabstop=2                 " n columns per tab
set shiftwidth=2              " n columns to indent with << and >>
set expandtab                 " insert spaces for tabs
set nowrap                    " don't wrap long lines
set hidden                    " don't force save before opening buffer
set exrc                      " enable per-directory .vimrc files
set laststatus=2              " show status line
set number                    " show linenumber
set numberwidth=5             " set the number width
set relativenumber            " use relative instead of absolute line numbers
set list
set listchars=tab:··,trail:⎵  ""show tab and trailing whitespace
set colorcolumn=120           " set the right margin marker
set modeline                  " enable editor specific commands

set ttyfast
set lazyredraw

syntax on
filetype on
filetype indent on
filetype plugin on

"" disable F2 help
nmap <F2> :echo<CR>
imap <F1> <C-o>:echo<CR>


"" disable 'save and quit' because it's to close to 'suspend' (<C-z>)
map <S-z><S-z> <Nop>

"" remap the record macro to leader q
noremap <Leader>q q
noremap q <Nop>

"""" trim trailing whitespace on entire buffer
function! TrimWhiteSpace()
  execute '%s/\s\+$//e'
endfunction
noremap <C-S> :call TrimWhiteSpace()<CR>

"""" automatically delete trailing whitespace
"""" on save for these filetypes
autocmd BufWritePre *.hs :call TrimWhiteSpace()
autocmd BufWritePre *.rb :call TrimWhiteSpace()
autocmd BufWritePre *.scm :call TrimWhiteSpace()
autocmd BufWritePre *.go :call TrimWhiteSpace()

"""" Show syntax highlighting groups for word under cursor
"" nmap <C-S-P> :call <SID>SynStack()<CR>
nmap <C-g> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"""" Read output of command into new botright buffer
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
  endfor
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, "=========START-OF-OUTPUT=========")
  silent execute '$read !'. expanded_cmdline
  call append(line('$'), "==========END-OF-OUTPUT==========")
  setlocal nomodifiable
  1
endfunction

command! -complete=file -nargs=* Git call s:RunShellCommand('git '.<q-args>)
command! -complete=file -nargs=* ReadStackBuild call s:RunShellCommand('stack build --force-dirty --fast')


"" show/hide nerdtree
map <leader>n :NERDTreeToggle<CR>

set directory=~/.tmp/vim/swap//
