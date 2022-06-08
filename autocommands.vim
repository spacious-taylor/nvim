augroup initialize
  autocmd!
  autocmd CursorMoved *.yml echo localorie#expand_key()
augroup end
