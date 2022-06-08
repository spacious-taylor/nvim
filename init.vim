" maintainer: Tin-Lok Law (@taylot-tllaw)

" be iMproved
set nocompatible

" mouse support
" set mouse=a

" indentation
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set smarttab
set shiftround

" display
set scrolloff=10
" set colorcolumn=80
set cursorline
set noshowmode
set showcmd
set listchars=eol:↵,tab:\¦\ ,trail:▓,extends:>,precedes:<,space:·
set list

" filetype
filetype plugin indent on

" motion
set whichwrap+=[,],<,>,h,l

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" line number
set number
set relativenumber

" syntax
syntax on

" window split
set splitbelow
set splitright

" folding
set foldmethod=indent
set foldnestmax=5

" clipboard
set clipboard=unnamed,unnamedplus

" macro performance
set lazyredraw

source ~/.config/nvim/mappings.vim
source ~/.config/nvim/autocommands.vim
source ~/.config/nvim/plugins.vim
