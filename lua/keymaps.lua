local remap = vim.api.nvim_set_keymap

-- https://coderwall.com/p/gdowew/vim-tip-map-leader-to-space
remap('n', '<space>', '<nop>', { noremap = true })
vim.g.mapleader = ' ' -- set map leader to space

vim.o.pastetoggle = '<F12>' -- Toggle insert mode

remap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true })

remap('n', '<c-p>', ":Telescope find_files<CR>", { noremap = true })
remap('n', '<leader>ff', ":Telescope find_files<CR>", { noremap = true })

local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.smart_tab()
    return vim.fn.pumvisible() == 1 and t'<C-n>' or t'<Tab>'
end

remap('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})

function _G.smart_s_tab()
    return vim.fn.pumvisible() == 1 and t'<C-p>' or t'<S-Tab>'
end

remap('i', '<S-Tab>', 'v:lua.smart_s_tab()', {expr = true, noremap = true})
