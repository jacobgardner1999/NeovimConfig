-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    -- Visual

	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	})

    use("sitiom/nvim-numbertoggle")

    use('prichrd/netrw.nvim')

    use('nvim-tree/nvim-web-devicons')

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }
    }

    -- LSP, formatting, autocompletion

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
	use("nvim-treesitter/playground")
    use({
        "nvim-treesitter/nvim-treesitter-textobjects",
        after = "nvim-treesitter",
        requires = "nvim-treesitter/nvim-treesitter",
    })

    use('jose-elias-alvarez/null-ls.nvim')

    use('MunifTanjim/prettier.nvim')

    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-nvim-lua")
    use("hrsh7th/cmp-nvim-lsp")

    use("saadparwaiz1/cmp_luasnip")

    -- tpope

    use("tpope/vim-surround")
    use("tpope/vim-commentary")
    use("tpope/vim-dadbod")
    use("tpope/vim-abolish")

    -- git 

    use("lewis6991/gitsigns.nvim")
	use("tpope/vim-fugitive")
    use("rhysd/git-messenger.vim")

    -- file navigation 

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use("theprimeagen/harpoon")

    -- dev workflow

	use("mbbill/undotree")

    use('ggandor/leap.nvim')

    use('christoomey/vim-tmux-navigator')

    use('jbyuki/venn.nvim')

    use('folke/zen-mode.nvim')

end)
