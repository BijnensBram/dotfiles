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
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>qf", "<cmd>Telescope quickfix<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")
nnoremap("<leader>lw", "<cmd>Telescope diagnostics<cr>")
nnoremap("<leader>ls", "<cmd>Telescope lsp_workspace_symbols<cr>")
nnoremap("<leader>td", "<cmd>TodoTelescope<cr>")

nmap("<Leader>sc", "<cmd>SendMdCellMove<cr>")
nmap("<Leader>nc", "<cmd>NextMdCell<cr>")
nmap("<Leader>pc", "<cmd>PreviousMdCell<cr>")
