-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local function startup(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- tokyonight theme
    use 'folke/tokyonight.nvim'

    -- fzf
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    -- treesitter
    use('nvim-treesitter/nvim-treesitter', {
        run = ':TSUpdate'
    })

    -- harpoon
    use 'theprimeagen/harpoon'

    -- undotree
    use 'mbbill/undotree'

    -- fugitive
    use 'tpope/vim-fugitive'

    -- lsp zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = { -- LSP Support
        {'neovim/nvim-lspconfig'}, {'williamboman/mason.nvim'}, {'williamboman/mason-lspconfig.nvim'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'}, {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-nvim-lua'}, -- Snippets
        {'L3MON4D3/LuaSnip'}, -- Snippet Collection (Optional)
        {'rafamadriz/friendly-snippets'}}
    }

    -- lsp eslint
    use 'Muniftanjim/eslint.nvim'

    -- trouble
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- neo tree
    use {
  	"nvim-neo-tree/neo-tree.nvim",
    	branch = "v2.x",
    	requires = {
      		"nvim-lua/plenary.nvim",
      		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      		"MunifTanjim/nui.nvim",
    	}
  }
end

return require('packer').startup(startup)
