--% markdown
-- # Settings
-- 
-- ## Loading plugins
--
--% lua
require("bufferline").setup{}
require('lualine').setup{
    options = {
        theme = 'material-nvim'
    }
}
require("todo-comments").setup{}
require('gitsigns').setup{}

--% markdown
-- ## Setting editor options
--
--% lua
local set = vim.opt -- set options

--% markdown
-- ### Usage options
-- #### Full lua
--
--% lua
set.encoding="utf8"
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
-- Use spaces instead of tabs
set.expandtab = true
-- Be smart when using tabs
set.smarttab = true
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

--% markdown
-- #### Vimscript
--
--% lua
vim.cmd([[set mouse=a]])
vim.cmd([[set nobackup]])
vim.cmd([[set nowb]])
vim.cmd([[set noswapfile]])
vim.cmd([[set clipboard+=unnamedplus]])

--% markdown
-- ### Appearance settings
-- #### Full lua
--
--%lua 
set.background = "dark" -- or "light" for light mode
vim.g.material_style = "darker"
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cursorline = true
set.syntax = "on"
set.scrolloff = 25

--% markdown
-- #### Vimscript
--
--% lua
vim.cmd([[colorscheme material]])
