local opt = vim.opt

-- indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.shiftround = true

-- display
opt.scrolloff = 10
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = 'yes'
opt.list = true
opt.listchars:append {
  eol = '↵',
  tab = '▶ ',
  trail = '▓',
  space = '·'
}

-- motion
opt.whichwrap:append '[,],<,>'

-- search
opt.ignorecase = true
opt.smartcase = true

-- split
opt.splitright = true
opt.splitbelow = true

-- performance
opt.lazyredraw = true
opt.updatetime = 100
