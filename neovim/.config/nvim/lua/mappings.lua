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
map("bn", "<cmd>bn<CR>")
map("bp", "<cmd>bp<CR>")

--% markdown
-- ## Telescope mappings
-- All keymappings using telescope as popup window
--
--% lua
nnoremap("ff", "<cmd>Telescope find_files<cr>")
nnoremap("fb", "<cmd>Telescope buffers<cr>")
nnoremap("fh", "<cmd>Telescope help_tags<cr>")
nnoremap("fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>qf", "<cmd>Telescope quickfix<cr>")
nnoremap("<leader>lw", "<cmd>Telescope diagnostics<cr>")
nnoremap("<leader>ws", "<cmd>Telescope lsp_workspace_symbols<cr>")
nnoremap("td", "<cmd>TodoTelescope<cr>")

nmap("<Leader>cs", "<cmd>SendMdCellMove<cr>")
nmap("<Leader>ls", "<cmd>SendMdLine<cr>")
nmap("<Leader>cn", "<cmd>NextMdCell<cr>")
nmap("<Leader>cp", "<cmd>PreviousMdCell<cr>")
