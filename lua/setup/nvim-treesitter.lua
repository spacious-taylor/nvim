local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
  ensure_installed = {
    'ruby',
    'typescript',
    'scss',
  },
  highlight = {
    enable = true,
  },
}
