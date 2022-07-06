--% markdown
-- # Plugins
-- I use packer.nvim as package manager.
--
-- ## Bootstrapping packer.nvim
-- The first step is to bootstrap packer.nvim
--
--% lua
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap =
        fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
end
vim.cmd [[packadd packer.nvim]]

--% markdown
-- ## Installing all the plugins
--
--% lua
return require("packer").startup(
    function()
        --% markdown
        -- Packer can manage itself
        --
        --% lua
        use "wbthomason/packer.nvim"
        --% markdown
        -- ### Usability plugins
        --
        --% lua
        use "tpope/vim-commentary"
        use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
        use 'nvim-treesitter/playground'
        use "b0o/mapx.nvim"
        use "folke/which-key.nvim"
        use "kyazdani42/nvim-tree.lua"
        use "nvim-lua/plenary.nvim"
        use "nvim-telescope/telescope.nvim"
        use "folke/todo-comments.nvim"
        use "ggandor/lightspeed.nvim"
        use "christoomey/vim-tmux-navigator"
        use "sindrets/diffview.nvim"
        use "kyazdani42/nvim-web-devicons"
        use "folke/trouble.nvim"

        --% markdown
        -- ### Appearance plugins
        --
        --% lua
        use "rktjmp/lush.nvim"
        use "akinsho/bufferline.nvim"
        use "nvim-lualine/lualine.nvim"
        use "lewis6991/gitsigns.nvim"
        use "ellisonleao/gruvbox.nvim"
        use {
            "iamcco/markdown-preview.nvim",
            run = function()
                vim.fn["mkdp#util#install"]()
            end
        }
        use "sbdchd/neoformat"
        use "lukas-reineke/indent-blankline.nvim"
        use "j-hui/fidget.nvim"
        use "preservim/vim-markdown"
        -- use "vim-pandoc/vim-pandoc"
        -- use "vim-pandoc/vim-pandoc-syntax"
        use "~/Projects/nvim-mdrun"
        use "rafcamlet/nvim-luapad"
        --% markdown
        -- ### Language server plugins
        --
        --% lua
        use "neovim/nvim-lspconfig"
        use "nvim-neorg/neorg"
        --% markdown
        -- ### Autocomplete plugins
        --
        --% lua
        use "hrsh7th/nvim-cmp"
        use "kdheepak/cmp-latex-symbols"
        use "hrsh7th/cmp-nvim-lsp"
        use "hrsh7th/cmp-buffer"
        use "hrsh7th/cmp-path"
        use "hrsh7th/cmp-cmdline"
        use "hrsh7th/cmp-vsnip"
        use "hrsh7th/vim-vsnip"
        use {
            "tzachar/cmp-tabnine",
            run = "./install.sh"
        }
    end
)
