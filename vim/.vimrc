call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
call plug#end()

colorscheme moonfly

set nocompatible                 " behave like vim not vi
set directory=~/.tmp/vim/swap/   " set swapfile directory
set termguicolors                " use the gui color values
set encoding=utf8                " show utf8 encoding
set fileencoding=utf8            " save files with utf8 encoding
set tabstop=2                    " n columns per tab
set shiftwidth=2                 " n columns to indent with << and >>
set expandtab                    " insert spaces for tabs
set nowrap                       " don't wrap long lines
set hidden                       " don't force save before opening buffer
set exrc                         " enable per-directory .vimrc files
set laststatus=2                 " show status line
set number                       " show linenumber
set numberwidth=5                " set the number width
set relativenumber               " use relative instead of absolute line numbers
set list                         " show whitespace
set listchars=tab:··,trail:⎵     " show tab and trailing whitespace
set colorcolumn=120              " set the right margin marker
set modeline                     " enable editor specific commands
set lazyredraw                   " don't redraw while executing macros

let mapleader=","

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

"""" automatically delete trailing whitespace on save for these filetypes
autocmd BufWritePre *.hs :call TrimWhiteSpace()
autocmd BufWritePre *.rb :call TrimWhiteSpace()
autocmd BufWritePre *.scm :call TrimWhiteSpace()
autocmd BufWritePre *.go :call TrimWhiteSpace()

