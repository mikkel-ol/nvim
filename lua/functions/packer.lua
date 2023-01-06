-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

function startup(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- fzf
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    -- material theme
    use 'marko-cerovac/material.nvim'

    -- treesitter
    use('nvim-treesitter/nvim-treesitter', {
        run = ':TSUpdate'
    })

    -- harpoon
    use 'theprimeagen/harpoon'

    -- undotree
    use 'mbbill/undotree'
end

return require('packer').startup(startup)
