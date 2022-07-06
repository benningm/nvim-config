-- vim.o.shell = '/bin/bash'

vim.o.laststatus = 2
-- vim.o.showmode = true

-- vim.o.modeline=true
-- vim.o.modelines=5

vim.o.ts=2
vim.o.shiftwidth=2
vim.o.expandtab = true

-- vim.o.autoread = true
-- vim.o.so = 5
-- vim.o.wildmenu = true
-- vim.o.ruler = true

vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.showmatch = true

vim.o.mouse = 'a'

-- vim.o.updatetime = 500
vim.o.number = true

vim.o.encoding = 'UTF-8'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menu,menuone,noselect'

-- Avoid showing message extra message when using completion
vim.opt.shortmess:append('c')

vim.opt.guifont = "DejaVu Sans Mono:h16"
