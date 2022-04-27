local nvim_lsp = require('lspconfig')
local util = require 'lspconfig/util'

nvim_lsp['solargraph'].setup{
  cmd = { "docker-compose", "exec", "-T", "web", "solargraph", "stdio" }
  -- on_attach=require'completion'.on_attach
}

nvim_lsp['puppet'].setup {
  cmd = { 'puppet-languageserver', '--stdio' },
  filetypes = { 'puppet' },
  root_dir = function(fname)
    local root_files = {
      "manifests",
      "metadata.json",
      ".git"
    }
    return util.root_pattern(unpack(root_files))(fname) or util.path.dirname(fname)
  end,
}

local servers = { 'pyright', 'tsserver' }
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
  }
end
