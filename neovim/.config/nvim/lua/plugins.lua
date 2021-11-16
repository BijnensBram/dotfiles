local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-commentary'
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    -- Post-install/update hook with neovim command
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use "b0o/mapx.nvim"
    -- Use dependency and run lua function after load
    use 'nvim-lua/plenary.nvim'
    use {'lewis6991/gitsigns.nvim'}
    use {'marko-cerovac/material.nvim'}
    use {'sonph/onehalf'}
    -- You can specify multiple plugins in a single call
    use {"rktjmp/lush.nvim"}
    use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}

    use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons',
		      config = function() require'nvim-tree'.setup {} end}
    use {
	'nvim-lualine/lualine.nvim',
  	requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
    -- use {'tzachar/cmp-tabnine', requires = 'hrsh7th/nvim-cmp'}

    -- For vsnip users.
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use "folke/todo-comments.nvim"
    use 'ggandor/lightspeed.nvim'
    use "MattesGroeger/vim-bookmarks"
    use "nvim-telescope/telescope-project.nvim"

    use 'christoomey/vim-tmux-navigator'
end)
