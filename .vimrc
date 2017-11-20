set nocompatible                  " don't need to be compatible with old vi

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'
Plug 'mileszs/ack.vim'
call plug#end()

set encoding=utf-8                " the encoding displayed
set fileencoding=utf-8            " the encoding written to file
syntax on                         " show syntax highlighting
filetype plugin indent on         " load file type plugins and indentation
set expandtab                     " These settings will result in spaces being used for all indentation.
set shiftwidth=2                  " These settings will result in spaces being used for all indentation.
set softtabstop=2                 " These settings will result in spaces being used for all indentation.
set autoindent                    " copy the indentation from the previous line, when starting a new line
set nowrap                        " do not wrap lines
set colorcolumn=80                " show edge
set relativenumber                " show relative line numbers
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set cursorline                    " highlight current line
set incsearch                     " show search results as I type
set ruler                         " show row and column in footer
set clipboard=unnamed             " use the system clipboard

set lazyredraw                    " avoid slow drawing
set ttyfast                       " avoid slow drawing

set background=dark               " set dark background and color scheme
colorscheme base16-railscasts

let mapleader = ","               " set leader key to comma
map <C-p> :FZF<CR>                " Cntrl-p for FZF
let NERDTreeMinimalUI=1           " remove the help line at the top

" map escape to pressing jk at the same time
inoremap jk <Esc>
inoremap kj <Esc>

" map Silver Searcher
map <leader>a :Ag!<space>

let g:airline#extensions#tabline#enabled = 1 " airline displays buffers
let g:airline_theme='base16'

autocmd BufWritePre * %s/\s\+$//e  " auto remove trailing whitespaces

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Faster grepping
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" map NERDTree
nmap <C-n> :NERDTreeToggle<CR>
