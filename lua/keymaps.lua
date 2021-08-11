local remap = vim.api.nvim_set_keymap

-- https://coderwall.com/p/gdowew/vim-tip-map-leader-to-space
vim.api.nvim_set_keymap('n', '<space>', '<nop>', { noremap = true })
vim.g.mapleader = ' ' -- set map leader to space

vim.o.pastetoggle = '<F12>' -- Toggle insert mode

remap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true })

remap('n', '<c-p>', ":Telescope find_files<CR>", { noremap = true })
remap('n', '<leader>ff', ":Telescope find_files<CR>", { noremap = true })
