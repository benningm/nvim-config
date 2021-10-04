-- vim.g.completion_enable_auto_popup = 0
vim.g.completion_enable_snippet = 'UltiSnips'

vim.api.nvim_command('autocmd BufEnter * lua require\'completion\'.on_attach()')
