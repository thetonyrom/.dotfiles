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
Plugin 'vim-airline/vim-airline-themes'
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

set relativenumber                      " display line numbers
 
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

" Open NERDTree if it is a folder
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Close vim if the only window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle NERDTree
map t :NERDTreeToggle<CR>
" Hide extras
let NERDTreeMinimalUI=1

" Show buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline_solarized_bg='dark'
