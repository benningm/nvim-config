require('nvim-treesitter.configs').setup {
  ensure_installed = "all",
  highlight = {
    enable = true, -- false will disable the whole extension
    additional_vim_regex_highlighting = { "puppet" }
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.puppet = {
  install_info = {
    url = "https://github.com/awrenn/tree-sitter-puppet",
    branch = "main",
    files = { "src/parser.c", "src/scanner.cc" },
    -- generate_requires_npm = true,
  },
  filetype = "puppet", -- if filetype does not agrees with parser name
  -- used_by = {"bar", "baz"} -- additional filetypes that use this parser
}
