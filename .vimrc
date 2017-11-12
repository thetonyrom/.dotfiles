set nocompatible                " be iMproved, required
filetype off                    " required

" Vundle & plugins
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'vim-airline/vim-airline'
  Plugin 'scrooloose/nerdtree'
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-rails'
  Plugin 'Yggdroot/indentLine'
  Plugin 'kien/ctrlp.vim'
  Plugin 'thoughtbot/vim-rspec'
call vundle#end()

filetype plugin indent on       " load file type plugins + indentation

syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands

" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set number                      " display line numbers
 
set tags=./tags;                " ctags -R --exclude=.git --exclude=log *
 
" Search tool
set grepprg=ack

" Set ruler
set colorcolumn=81
highlight ColorColumn ctermbg=0

" Indention lines
let g:indentLine_char = '›'

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

