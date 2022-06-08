" maintainer: Tin-Lok Law (@taylor-tllaw)

let mapleader=","

" file system
nnoremap <leader>/ :NERDTreeToggle<cr>

" rails translation
nnoremap <leader>lt :call localorie#translate()<cr>

" search highlight
nnoremap <esc> :nohlsearch<cr>

" Reverse Finding
nnoremap \ ,

" fuzzy finder
nnoremap <leader>ff :Files<cr>
nnoremap <leader>fg :Rg<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fm :Marks<cr>
nnoremap <leader>fw :Windows<cr>

" buffer
nnoremap <leader>bj :bn<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bk :bp<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bd :bd<cr>

" terminal
nnoremap <leader>to :FloatermToggle<cr>
tnoremap <esc> <c-\><c-n>

function! WrapRegion() range
  let region_name = input('Region Name? ')
  execute "normal " .. a:firstline .. "GV" .. a:lastline .. "GdO# region " .. region_name .. "\<CR>\<BS>\<BS>\<CR>\<CR># endregion " .. region_name .. "\<ESC>2kp"
endfunction

vnoremap <leader>wr :call WrapRegion()<cr>
