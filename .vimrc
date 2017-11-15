set nocompatible                  " don't need to be compatible with old vi
set encoding=utf-8                " the encoding displayed
set fileencoding=utf-8            " the encoding written to file
syntax on                         " show syntax highlighting
filetype plugin indent on         " load file type plugins and indentation
set expandtab " These settings will result in spaces being used for all indentation.
set shiftwidth=2 " These settings will result in spaces being used for all indentation.
set softtabstop=2 " These settings will result in spaces being used for all indentation.
set autoindent                    " copy the indentation from the previous line, when starting a new line
set nowrap                        " do not wrap lines
set relativenumber                " show relative line numbers
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set cursorline                    " highlight current line
set incsearch                     " show search results as I type
set ruler                         " show row and column in footer
set clipboard=unnamed             " use the system clipboard

" set dark background and color scheme
set background=dark
colorscheme base16-railscasts

" set leader key to comma
let mapleader = ","
