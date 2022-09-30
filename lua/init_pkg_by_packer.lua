-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- coc.nvim
    use {'neoclide/coc.nvim', branch = 'release'}

    -- fzf
    -- use 'junegunn/fzf', { 'do': { -> fzf#install() } }
    -- use 'junegunn/fzf.vim'

    -- theme
    use 'morhetz/gruvbox'
    -- use'dracula/dracula-theme'
    -- use'dracula/vim', { 'as': 'dracula' }

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

end)
