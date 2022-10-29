-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim") -- Common utilities

	use("nvim-lualine/lualine.nvim") -- Statusline
	use("onsails/lspkind-nvim") -- vscode-like pictograms

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })

	-- dark prefered colorscheme
	-- use {'rose-pine/neovim' }
	-- use {'navarasu/onedark.nvim' }
	-- use {'folke/tokyonight.nvim' }
	-- use {'norcalli/nvim-base16.lua' }
	-- use {'bluz71/vim-nightfly-guicolors' }
	-- use {'Mofiqul/vscode.nvim' }
	-- use {'mangeshrex/everblush.vim' }
	-- use {'EdenEast/nightfox.nvim' }
	-- use {'rebelot/kanagawa.nvim' }
	-- use({ 'catppuccin/nvim', as = 'catppuccin' })
	use({ "joshdick/onedark.vim" })

	use({ "ahmedkhalf/project.nvim" })

	-- vs-code like icons
	use("kyazdani42/nvim-web-devicons")
	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- commenting with gc
	use("numToStr/Comment.nvim")

	-- auto closing
	use({ "windwp/nvim-ts-autotag", event = "InsertEnter", after = "nvim-treesitter" })
	use({ "windwp/nvim-autopairs", after = "nvim-cmp" })

	-- fuzzy finding w/ telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use("nvim-telescope/telescope.nvim")

	use({ "p00f/nvim-ts-rainbow", after = "nvim-treesitter" })
	use({ "folke/which-key.nvim" })
	use({ "lewis6991/impatient.nvim" })

	-- LSP
	use("neovim/nvim-lspconfig") -- LSP
	use("MunifTanjim/prettier.nvim") -- Prettier plugin for Neovim's built-in LSP client
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- LSP UIs
	use("arkav/lualine-lsp-progress") -- LSP Status
	use({ "ray-x/lsp_signature.nvim" })

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- Completion
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-nvim-lua")

	-- snippets
	use("saadparwaiz1/cmp_luasnip")
	use({
		"L3MON4D3/LuaSnip",
		event = "InsertEnter",
		config = function()
			require("arifinoid.snippets")
		end,
	}) --snippet engine
	use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use

	-- Git
	use("lewis6991/gitsigns.nvim")
	use("dinhhuy258/git.nvim")

	use({ "lukas-reineke/format.nvim", cmd = "Format" })
	use("norcalli/nvim-colorizer.lua")
	use({ "rcarriga/nvim-notify" })
	use({
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	use({
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.theta").config)
		end,
	})
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	use({ "lukas-reineke/indent-blankline.nvim" })
	use({ "akinsho/toggleterm.nvim" })
	use({ "terrortylor/nvim-comment" })
	use({ "terryma/vim-multiple-cursors" })
	use({ "psliwka/vim-smoothie" })
	use({ "wakatime/vim-wakatime" })
	use({ "jamestthompson3/nvim-remote-containers" })
	use({ "editorconfig/editorconfig-vim" })

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	if packer_bootstrap then
		require("packer").sync()
	end
end)
