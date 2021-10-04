local nvim_lsp = require('lspconfig')

nvim_lsp['solargraph'].setup{
  cmd = { "docker-compose", "exec", "-T", "web", "solargraph", "stdio" }
  -- on_attach=require'completion'.on_attach
}
