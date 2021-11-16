require'mapx'.setup{ global = true }

vim.g.mapleader = " "

vim.g.tmux_navigator_no_mappings = 1
nnoremap("<C-j>", "<cmd>TmuxNavigateDown<CR>")
nnoremap("<C-k>", "<cmd>TmuxNavigateUp<CR>")
nnoremap("<C-h>", "<cmd>TmuxNavigateLeft<CR>")
nnoremap("<C-l>", "<cmd>TmuxNavigateRight<CR>")
map("<C-u>", "<cmd>NvimTreeToggle<CR>")
map("<leader>n", "<cmd>bn<CR>")
map("<leader>p", "<cmd>bp<CR>")

nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>qf", "<cmd>lua require('telescope.builtin').quickfix()<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
nnoremap("<leader>lw", "<cmd>lua require('telescope.builtin').lsp_workspace_diagnostics()<cr>")
nnoremap("<leader>ls", "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>")
nnoremap("<leader>p",  "<cmd>lua require'telescope'.extensions.project.project{}<cr>")

-- nnoremap("<C-h>", "<cmd>lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>")
-- nnoremap("<C-j>", "<cmd>lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>")
-- nnoremap("<C-k>", "<cmd>lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>")
-- nnoremap("<C-l>", "<cmd>lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>")
-- nnoremap("<silent> <C-Space>", "<cmd>lua require'nvim-tmux-navigation'.NvimTmuxNavigateNext()<cr>")
