-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'dstein64/vim-startuptime'

    -- TODO
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- lspconfig
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/lsp-status.nvim'

    -- grammar
    use {
        "brymer-meneses/grammar-guard.nvim",
        requires = {"neovim/nvim-lspconfig", "williamboman/nvim-lsp-installer"}
    }

    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    -- coc.nvim
    -- use {'neoclide/coc.nvim', branch = 'release'}

    -- fzf
    -- use 'junegunn/fzf', { 'do': { -> fzf#install() } }
    -- use 'junegunn/fzf.vim'

    -- theme
    use 'morhetz/gruvbox'
    -- use'dracula/dracula-theme'
    -- use'dracula/vim', { 'as': 'dracula' }

    -- easymotion
    use 'easymotion/vim-easymotion'

    -- airline
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    -- nvim-tree
    use 'kyazdani42/nvim-web-devicons' -- optional, for file icons
    use 'kyazdani42/nvim-tree.lua'

    -- tagbar
    use 'majutsushi/tagbar'

    -- comment
    use 'joom/vim-commentary'

    -- git
    use 'tpope/vim-fugitive'

    -- neogit
    use 'nvim-lua/plenary.nvim'
    use 'sindrets/diffview.nvim'
    use 'TimUntersberger/neogit'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    use {
        'rcarriga/nvim-notify',
        config = function ()
          require("notify").setup {
            stages = 'fade_in_slide_out',
            background_colour = 'FloatShadow',
            timeout = 3000,
          }
          vim.notify = require('notify')
        end
      }

    -- telescope-roject
    use {'nvim-telescope/telescope-project.nvim'}

    -- document
    use {'kkoomen/vim-doge', run = ':call doge#install()'}

end)
