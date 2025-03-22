local lsp = require('lspconfig')
lsp.gopls.setup {
   on_attach = on_attach,
   cmd = "go/bin/gopls" 
}
