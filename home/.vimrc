set nocompatible              "" behave like vim not vi 
execute pathogen#infect()

set t_Co=256                  " force 256 color mode
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
set nomodeline                " don't want editor specific commands in files
set number                    " show linenumber
set numberwidth=4             " set the number width

syntax on
filetype on
filetype indent on
filetype plugin on

"" remap the record macro to leader q
noremap <Leader>q q
noremap q <Nop>

"""" delete trailing whitespace on save
""autocmd BufWritePre *.rb :%s/\s\+$//e
""autocmd BufWritePre *.scm :%s/\s\+$//e

"" slime config
let g:slime_target = "tmux"

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc