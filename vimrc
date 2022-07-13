" Maintainer: Tin-Lok Law (@tllaw)


""""""""""
" Plugin "
""""""""""

call plug#begin()

" development: general
Plug 'editorconfig/editorconfig-vim'             " editorconfig
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " autocomplete
Plug 'liuchengxu/vista.vim'                      " display LSP symbols
Plug 'preservim/nerdcommenter'                   " comment
Plug 'airblade/vim-gitgutter'                    " git

" development: rails
Plug 'vim-ruby/vim-ruby'                         " ruby
Plug 'tpope/vim-rails'                           " rails
Plug 'airblade/vim-localorie'                    " rails locale

" development: markdown
Plug 'preservim/vim-markdown'                    " markdown syntax highlight
Plug 'shime/vim-livedown'                        " markdown live server

" fuzzy finder
Plug 'junegunn/fzf'                              " command line tool for fuzzy finder
Plug 'junegunn/fzf.vim'                          " fuzzy finder

" file explorer
Plug 'preservim/nerdtree'                        " file explorer
Plug 'Xuyuanp/nerdtree-git-plugin'               " git on nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'   " colors on nerdtree
Plug 'francoiscabrol/ranger.vim'                 " file searcher

" session
Plug 'wilon/vim-auto-session'                    " session

" motion
Plug 'easymotion/vim-easymotion'                 " jump to target easily

" display
Plug 'morhetz/gruvbox'                           " colorscheme
Plug 'vim-airline/vim-airline'                   " status line
Plug 'Yggdroot/indentLine'                       " indent guide
Plug 'kshenoy/vim-signature'                     " show mark position
Plug 'luochen1990/rainbow'                       " rainbow parentheses
Plug 'ryanoasis/vim-devicons'                    " icons

call plug#end()


"""""""""""
" General "
"""""""""""

" be iMproved
set nocompatible

" backup files
set nobackup
set noswapfile
set nowritebackup
set noundofile

" indentation
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set smarttab
set shiftround

" display
set background=dark
set updatetime=100
set laststatus=2
set scrolloff=10
set sidescrolloff=10
" set foldlevel=3
" set foldcolumn=1
set listchars+=eol:↵,tab:▶\ ,trail:▓,space:·
set fillchars+=vert:│,foldsep:\ ,foldopen:▼,foldclose:▶
set belloff=all
set shortmess=
set list
set number
set relativenumber
set cursorline
set noshowmode
set showcmd
syntax on

" search
set incsearch
set hlsearch
set ignorecase
set smartcase

" command line complete options
set path+=**
set wildmenu

" split
set splitbelow
set splitright

" buffer
set hidden

" filetype
filetype plugin indent on

" key behaviour
set backspace=indent,eol,start

" tags file
set tags=./tags;


""""""""""""""""""
" Plugin Options "
""""""""""""""""""

" gruvbox
set termguicolors
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" airline
if !exists('g:airline_symbols')
  let g:airline_symbols={}
endif
let g:airline_symbols.modified=' ●'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tabline#show_tab_type=0

" nerdcommenter
let g:NERDSpaceDelims=1

" indentLine
let g:indentLine_defaultGroup='SpecialKey'
let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0

" rainbow_parentheses
let g:rainbow_active=1

" fzf
let g:fzf_layout={'window': {'width': 0.9, 'height': 0.9}}

" vim-ruby
" let ruby_fold=1

" ranger.vim
let g:ranger_map_keys=0


""""""""""
" Keymap "
""""""""""

let mapleader=','

" general
nnoremap \ ,
nnoremap <esc> :noh<cr>

" buffer
nnoremap <expr> gb ':<c-U>' . v:count1 . 'bn<cr>'
nnoremap <expr> gB ':<c-U>' . v:count1 . 'bp<cr>'
nnoremap <expr> ,b ':<c-U>' . (v:count > 0 ? v:count : '') . 'b<cr>'
nnoremap <expr> ,q ':<c-U>' . (v:count > 0 ? v:count : '') . 'bd<cr>'

" nerdtree
nnoremap <leader>/ :NERDTreeToggle<cr>

" fzf
nnoremap <leader>ff :Files<cr>
nnoremap <leader>fg :Rg<cr>

" vista
nnoremap <leader>vv :Vista coc<cr>

" localorie
nnoremap <leader>lt :call localorie#translate()<cr>

" rainbow
nnoremap <leader>rt :RainbowToggle<cr>

" coc
nnoremap <leader>ld <plug>(coc-definition)
nnoremap <leader>lr <plug>(coc-references)

" ranger.vim
nnoremap <leader>rg :Ranger<cr>

" rails: wrap region
function! WrapRegion() range
  let region_name = input('Region Name? ')
  execute "normal " .. a:firstline .. "GV" .. a:lastline .. "GdO# region " .. region_name .. "\<CR>\<BS>\<BS>\<CR>\<CR># endregion " .. region_name .. "\<ESC>2kp"
endfunction

vnoremap <leader>wr :call WrapRegion()<cr>


"""""""""""""""
" Autocommand "
"""""""""""""""

augroup initialize
  autocmd!
  " localorie
  autocmd CursorMoved *.yml echo localorie#expand_key()
augroup end
