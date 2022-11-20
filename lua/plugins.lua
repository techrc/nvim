require('packer').startup({
    function(use)
        use('wbthomason/packer.nvim')
	-- colorscheme
	use("folke/tokyonight.nvim")
	-- nvim-tree
	use({"kyazdani42/nvim-tree.lua",
	    requires = { "kyazdani42/nvim-web-devicons" },
	    config = function()
		require("plugin-config.nvim-tree")
	    end,
        })
	-- symbol outline
	use("simrat39/symbols-outline.nvim")
	-- bufferline
	use({"akinsho/bufferline.nvim",
	    requires = {
		"kyazdani42/nvim-web-devicons",
		"moll/vim-bbye",
	    },
	})
	-- lualine
	use({"nvim-lualine/lualine.nvim",
	    requires = { "kyazdani42/nvim-web-devicons" },
        })
        use("arkav/lualine-lsp-progress")
	-- nvim-treesitter
	use({"nvim-treesitter/nvim-treesitter",
	    config = function()
		require("plugin-config.nvim-treesitter")
	    end,
        })
	-- telescope
	use({'nvim-telescope/telescope.nvim',
	    requires = { "nvim-lua/plenary.nvim" },
	    config = function()
		require("plugin-config.telescope")
	    end,
        })
	-- dashboard & project
	use("glepnir/dashboard-nvim")
	use("ahmedkhalf/project.nvim")
	-- lsp
	use("neovim/nvim-lspconfig")
        use("williamboman/mason.nvim")
        use("williamboman/mason-lspconfig.nvim")
	-- cmp
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-path")
	-- snippet
	use("hrsh7th/vim-vsnip")
        -- ui
	use({"tami5/lspsaga.nvim",
	    config = function()
		require("plugin-config.lspsaga")
	    end,
        })
    end,
    config = {
        display = {
            open_fn = function()
                return require("packer.util").float({ border = "single" })
            end,
        }
    }
})


pcall(
    vim.cmd,
    [[
        augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
        augroup end
    ]]
)
