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
nnoremap <expr> gb ':<C-U>' . v:count1 . 'bn<cr>'
nnoremap <expr> gB ':<C-U>' . v:count1 . 'bp<cr>'
nnoremap <expr> <leader>b ':<C-U>' . v:count1 . 'b<cr>'
nnoremap <leader>q :bd<cr>

" terminal
nnoremap <leader>to :FloatermToggle<cr>
tnoremap <esc> <c-\><c-n>

function! WrapRegion() range
  let region_name = input('Region Name? ')
  execute "normal " .. a:firstline .. "GV" .. a:lastline .. "GdO# region " .. region_name .. "\<CR>\<BS>\<BS>\<CR>\<CR># endregion " .. region_name .. "\<ESC>2kp"
endfunction

vnoremap <leader>wr :call WrapRegion()<cr>
