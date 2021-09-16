vim.g.completion_enable_auto_popup = 0
vim.g.completion_enable_snippet = 'UltiSnips'

local remap = vim.api.nvim_set_keymap

remap('i', '<C-SPACE>', '<cmd>lua require("completion").triggerCompletion()<CR>', { silent = true })

-- vim.api.nvim_command('autocmd BufEnter * lua require\'completion\'.on_attach()')
