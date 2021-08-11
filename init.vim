if !has('nvim-0.5')
  echohl Error
  echomsg "nvim-lua requires neovim > v0.5, no config will be loaded"
  echohl clear
  set nolpl
  set termguicolors
  finish
end

lua require('init')
