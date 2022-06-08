local nvim_lsp = require('lspconfig')
nvim_lsp.solargraph.setup{}
nvim_lsp.stylelint_lsp.setup{}
nvim_lsp.eslint.setup{}

local servers = { "solargraph", "stylelint_lsp", "eslint" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    flags = {
      debounce_text_changes = 150,
    }
  }
end
