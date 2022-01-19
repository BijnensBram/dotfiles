--% markdown
-- # Mappings
-- This file contains most of the keymappings I use.
--
-- I use the plugin mapx (see plugins to make keymapping easier.
--
--% lua
require'mapx'.setup{ global = true }

--% markdown
-- Setting the leader key
--
--% lua
vim.g.mapleader = " "

--% markdown
-- ## tmux navigator mappings
-- I use tmux_navigator to integrate neovim and tmux (see plugins)
--
--% lua
vim.g.tmux_navigator_no_mappings = 1
nnoremap("<C-j>", "<cmd>TmuxNavigateDown<CR>")
nnoremap("<C-k>", "<cmd>TmuxNavigateUp<CR>")
nnoremap("<C-h>", "<cmd>TmuxNavigateLeft<CR>")
nnoremap("<C-l>", "<cmd>TmuxNavigateRight<CR>")

--% markdown
-- ## General mappings
--
--% lua
map("<C-u>", "<cmd>NvimTreeToggle<CR>")
map("<leader>n", "<cmd>bn<CR>")
map("<leader>p", "<cmd>bp<CR>")

--% markdown
-- ## Telescope mappings
-- All keymappings using telescope as popup window
--
--% lua
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>qf", "<cmd>lua require('telescope.builtin').quickfix()<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
nnoremap("<leader>lw", "<cmd>lua require('telescope.builtin').lsp_workspace_diagnostics()<cr>")
nnoremap("<leader>ls", "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>")
nnoremap("<leader>d", "<cmd>TodoTelescope<cr>")
