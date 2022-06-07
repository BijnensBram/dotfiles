--% markdown
-- # Neovim configuration
-- My personal neovim configuration. The init file is just used to load all the rest.

--% lua
require("plugins")
require("plugin_settings.lua-tree")
require("plugin_settings.nvim-cmp")
require("plugin_settings.diffview")
-- require("plugin_settings.treesitter")
require("plugin_settings.formatter")
require("settings")
require("mappings")
