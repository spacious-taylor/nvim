" Maintainer: Tin-Lok Law (@tllaw)


""""""""""
" Plugin "
""""""""""

call plug#begin()

" development: general
Plug 'editorconfig/editorconfig-vim'              " editorconfig
Plug 'neoclide/coc.nvim', {'branch': 'release'}   " autocomplete
Plug 'liuchengxu/vista.vim'                       " display LSP symbols
Plug 'preservim/nerdcommenter'                    " comment
Plug 'airblade/vim-gitgutter'                     " git

" development: rails
Plug 'vim-ruby/vim-ruby'                          " ruby
Plug 'tpope/vim-rails'                            " rails
Plug 'airblade/vim-localorie'                     " rails locale

" development: markdown
Plug 'preservim/vim-markdown'                     " markdown syntax highlight
Plug 'shime/vim-livedown'                         " markdown live server

" fuzzy finder
Plug 'junegunn/fzf'                               " command line tool for fuzzy finder
Plug 'junegunn/fzf.vim'                           " fuzzy finder

" file explorer
Plug 'preservim/nerdtree'                         " file explorer
Plug 'Xuyuanp/nerdtree-git-plugin'                " git on nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'    " colors on nerdtree

" session
Plug 'thaerkh/vim-workspace'                      " session manager

" motion
Plug 'easymotion/vim-easymotion'                  " jump to target easily

" display
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'                    " status line
Plug 'Yggdroot/indentLine'                        " indent guide
Plug 'kshenoy/vim-signature'                      " show mark position
Plug 'luochen1990/rainbow'                        " rainbow parentheses
Plug 'ryanoasis/vim-devicons'                     " icons

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
set laststatus=2
set scrolloff=10
set sidescrolloff=10
set foldlevel=2
set listchars+=eol:↵,tab:▶\ ,trail:▓,space:·
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

" updatetime
set updatetime=100

" filetype
filetype plugin indent on

" key behaviour
set backspace=indent,eol,start

" fold
set foldcolumn=1


""""""""""""""""""
" Plugin Options "
""""""""""""""""""

" gruvbox
colorscheme gruvbox

" airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.modified = ' ●'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_skip_empty_sections = 1

" indentLine
let g:indentLine_defaultGroup='SpecialKey'
let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0

" rainbow_parentheses
let g:rainbow_active = 1

" fzf
let g:fzf_layout={'window': {'width': 0.9, 'height': 0.9}}

" vim-ruby
let ruby_fold=1

" vim-workspace
let g:workspace_autocreate = 1                                " auto create session
let g:workspace_session_directory = $HOME . '/.vim/sessions/' " session dir
let g:workspace_undodir = $HOME . '/.vim/undodir/'            " undo dir
let g:workspace_autosave = 0                                  " don't autosave file
let g:workspace_create_new_tabs = 0                           " use buffer instead of tab


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
