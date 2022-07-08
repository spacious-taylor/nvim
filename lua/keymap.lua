vim.g.mapleader = ','

function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true, }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- general
map('n', '<esc>', ':nohlsearch<cr>', { silent = true }) -- exit highlight search
map('n', '\\', ',')                                     -- reverse searching

-- buffer
map('n', 'gb', '":<c-U>" . v:count1 . "bn<cr>"', { expr = true })
map('n', 'gB', '":<c-U>" . v:count1 . "bp<cr>"', { expr = true })
map('n', '<leader>b', '":<c-U>" . (v:count > 0 ? v:count : "") . "b<cr>"', { expr = true })
map('n', '<leader>q', '":<c-U>" . (v:count > 0 ? v:count : "") . "bd<cr>"', { expr = true })

-- hop
map('n', '<leader>hw', ':HopWord<cr>')
map('n', '<leader>hp', ':HopPattern<cr>')
map('n', '<leader>hl', ':HopLine<cr>')

-- rnvimr
map('n', '<leader>/', ':RnvimrToggle<cr>')

-- fzflua
map('n', '<leader>ff', ':FzfLua files<cr>')
map('n', '<leader>fg', ':FzfLua grep<cr><cr>')

-- localories
map('n', '<leader>lt', ':call localorie#translate()<cr>')

-- rails: wrap region
vim.cmd [[
  function! WrapRegion() range
    let region_name = input('Region Name? ')
    execute "normal " .. a:firstline .. "GV" .. a:lastline .. "GdO# region " .. region_name .. "\<CR>\<BS>\<BS>\<CR>\<CR># endregion " .. region_name .. "\<ESC>2kp"
  endfunction
  vnoremap <leader>wr :call WrapRegion()<cr>
]]
