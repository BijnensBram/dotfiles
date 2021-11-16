require("bufferline").setup{}
require('lualine').setup{
    options = {
        theme = 'material-nvim'
    }
}
require("todo-comments").setup{}
require('gitsigns').setup{}
-- require'telescope'.load_extension('project')


local set = vim.opt -- set options

set.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme material]])
vim.g.material_style = "darker"

vim.wo.relativenumber = true
vim.wo.number = true
vim.wo.cursorline = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
-- Use spaces instead of tabs
set.expandtab = true
-- Be smart when using tabs
set.smarttab = true

set.syntax = "on"
set.filetype.plugin = "on"
set.filetype.indent = "on"
set.ignorecase = true
-- When searching try to be smart about cases
set.smartcase = true
-- Highlight search results
set.hlsearch = true
-- Makes search act like search in modern browsers
set.incsearch = true
-- Don't redraw while executing macros (good performance config)
set.lazyredraw = true
-- For regular expressions turn magic on
set.magic = true

set.encoding="utf8"
vim.cmd([[set nobackup]])
vim.cmd([[set nowb]])
vim.cmd([[set noswapfile]])
set.scrolloff = 25

vim.cmd([[set mouse=a]])
