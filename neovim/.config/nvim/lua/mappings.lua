--% markdown
-- # Mappings
-- This file contains most of the keymappings I use.
--
-- I use the plugin mapx (see plugins to make keymapping easier.
--
--% lua
require "mapx".setup {global = true}

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
map("<C-u>", "<cmd>NvimTreeToggle<cr>")
nnoremap("s", "<cmd><C-u> SendMDSelection<cr>")

local wk = require("which-key")

wk.register(
    {
        f = {
            name = "file", -- optional group name
            f = {"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>", "Find File"},
            b = {"<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({}))<cr>", "Find Buffer"},
            h = {"<cmd>lua require'telescope.builtin'.help_tags(require('telescope.themes').get_dropdown({}))<cr>", "Help tags"},
            g = {"<cmd>lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({}))<cr>", "Live grep"},
        },
        l = {
            name = "lsp",
            q = {"<cmd>Telescope quickfix<cr>", "quickfix"},
            d = {
                name = "diagnostics",
                w = {"<cmd>lua require'telescope.builtin'.diagnostics(require('telescope.themes').get_dropdown({}))<cr>", "workspace diagnostics"},
                b = {"<cmd>lua require'telescope.builtin'.diagnostics(require('telescope.themes').get_dropdown({})) bufnr=0<cr>", "buffer diagnostics"},
            },
            s = {
                name = "symbols",
                w = {"<cmd>Telescope lsp_workspace_symbols<cr>", "workspace symbols"},
                b = {"<cmd>Telescope lsp_document_symbols<cr>", "buffer symbols"},
            }
        },
        g = {
            name = "git",
            c = {"<cmd>lua require'telescope.builtin'.git_commits()<cr>" , "Commits"},
            b = {"<cmd>lua require'telescope.builtin'.git_branches()<cr>" , "Branches"},
            s = {"<cmd>lua require'telescope.builtin'.git_status()<cr>" , "Status"},
            a = {"<cmd>lua require'telescope.builtin'.git_stash()<cr>" , "Stash"},
        },
        t = {"<cmd>TodoTelescope<cr>", "Todo"},
        m = {
            name = "mdrun",
            s = {
                name = "Send",
                c = {"<cmd>SendMdCellMove<cr>", "Send Cell"},
                l = {"<cmd>SendMdLine<cr>", "Send Line"},
                f = {"<cmd>SendMdFile<cr>", "Send File"},
            },
            n = {"<cmd>NextMdCell<cr>"},
            p = {"<cmd>PreviousMdCell<cr>"}
        },
        b = {
            name = "buffer",
            n = {"<cmd>bn<CR>", "Next buffer"},
            p = {"<cmd>bp<CR>", "Previous buffer"},
        },
    },
    {prefix = "<leader>"}
)
