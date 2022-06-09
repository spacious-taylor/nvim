call plug#begin()

" EditorConfig, required
Plug 'editorconfig/editorconfig-vim'

" file system
Plug 'scrooloose/nerdtree'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" movement
Plug 'easymotion/vim-easymotion'

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" lsp
Plug 'neovim/nvim-lspconfig'

" git
Plug 'airblade/vim-gitgutter'

" comments
Plug 'scrooloose/nerdcommenter'

" rails
Plug 'tpope/vim-rails'
Plug 'airblade/vim-localorie' " translation file navigation

" markdown
Plug 'preservim/vim-markdown' " syntax highlight
Plug 'shime/vim-livedown'     " markdown live server

" display
Plug 'joshdick/onedark.vim'             " theme
Plug 'vim-airline/vim-airline'          " status line
Plug 'Yggdroot/indentLine'              " indent level
Plug 'junegunn/rainbow_parentheses.vim' " brackets
Plug 'kshenoy/vim-signature'            " mark indicator
Plug 'voldikss/vim-floaterm'            " terminal
Plug 'ryanoasis/vim-devicons'           " icon

call plug#end()

" color scheme
colorscheme onedark
set background=dark

" rainbow_parentheses
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
"
" vim-markdown
let g:vim_markdown_folding_disabled=1

" airline-tabline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1

" lsp setup
lua require('lsp')
