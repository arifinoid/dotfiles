return {
	"projekt0n/github-nvim-theme",
	"xiyaowong/nvim-transparent",
	"tomasiser/vim-code-dark",
	"cocopon/iceberg.vim",
	"Mofiqul/dracula.nvim",
	"joshdick/onedark.vim",
	"morhetz/gruvbox",
	"shaunsingh/nord.nvim",
	"folke/tokyonight.nvim",
	"sainnhe/everforest",
	{ "catppuccin/nvim", name = "catppuccin" },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		config = function()
			require("rose-pine").setup()
			vim.cmd("colorscheme rose-pine")
		end,
	},
	{ "phaazon/hop.nvim", branch = "v2", config = true, event = "BufEnter" },
	{ "rescript-lang/vim-rescript", ft = "rescript" },

	-- LSP
	"neovim/nvim-lspconfig",
	"prettier/vim-prettier",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"arkav/lualine-lsp-progress",
	"onsails/lspkind-nvim",
	"jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",

	-- quick lint
	-- "dense-analysis/ale",
	-- { "neoclide/coc.nvim", branch = "release" },
	-- {
	-- 	"quick-lint/quick-lint-js",
	-- 	version = "3.0.0",
	-- 	lazy = true,
	-- 	config = function(plugin)
	-- 		vim.opt.rtp:append(plugin.dir .. "plugin/vim/quick-lint-js.vim")
	-- 		require("lspconfig/quick_lint_js").setup({})
	-- 	end,
	-- },

	-- autocompletion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-nvim-lua",

	-- snippets
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	{
		"L3MON4D3/LuaSnip",
		event = "InsertEnter",
		config = function()
			require("arifinoid.snippets")
		end,
	},

	-- gpt
	-- {
	-- 	"jackMort/ChatGPT.nvim",
	-- 	event = "VeryLazy",
	-- 	config = function()
	-- 		require("chatgpt").setup({
	-- 			api_key_cmd = "pass show api/tokens/openai",
	-- 		})
	-- 	end,
	-- 	dependencies = {
	-- 		"MunifTanjim/nui.nvim",
	-- 		"nvim-lua/plenary.nvim",
	-- 		"folke/trouble.nvim",
	-- 		"nvim-telescope/telescope.nvim",
	-- 	},
	-- },
	{
		"Exafunction/codeium.vim",
		config = function()
			vim.keymap.set("i", "<C-y>", function()
				return vim.fn["codeium#Accept"]()
			end, { expr = true })
			vim.keymap.set("i", "<C-;>", function()
				return vim.fn["codeium#CycleCompletions"](1)
			end, { expr = true })
			vim.keymap.set("i", "<C-,>", function()
				return vim.fn["codeium#CycleCompletions"](-1)
			end, { expr = true })
			vim.keymap.set("i", "<C-x>", function()
				return vim.fn["codeium#Clear"]()
			end, { expr = true })
		end,
	},

	-- debugging
	{ "folke/neodev.nvim", opts = {} },
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>ct",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>cd",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>xl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},

	{ "romgrk/barbar.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
	"nvim-tree/nvim-tree.lua",

	{ "lukas-reineke/indent-blankline.nvim", event = "BufEnter", commit = "3d08501caef2329aba5121b753e903904088f7e6" },
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"p00f/nvim-ts-rainbow",
		},
	},

	"windwp/nvim-ts-autotag",
	{ "windwp/nvim-autopairs", config = true, event = "InsertEnter" },

	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},

	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	},

	"nvim-telescope/telescope-ui-select.nvim",
	{
		"j-hui/fidget.nvim",
		tag = "legacy",
	},
	{ "numToStr/Comment.nvim", config = true, event = "BufEnter" },
	{ "terrortylor/nvim-comment" },
	{ "folke/todo-comments.nvim" },
	{ "JoosepAlviste/nvim-ts-context-commentstring", lazy = true },
	{
		"echasnovski/mini.comment",
		event = "VeryLazy",
		opts = {
			hooks = {
				pre = function()
					require("ts_context_commentstring.internal").update_commentstring({})
				end,
			},
		},
		config = function(_, opts)
			require("mini.comment").setup(opts)
		end,
	},

	-- git
	{ "dinhhuy258/git.nvim" },
	{ "akinsho/git-conflict.nvim", version = "*", config = true },
	{ "lewis6991/gitsigns.nvim", config = true, event = "BufEnter" },
	"tpope/vim-fugitive",

	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},

	"goolord/alpha-nvim",
	"rcarriga/nvim-notify",
	"folke/which-key.nvim",
	"akinsho/toggleterm.nvim",
	"mbbill/undotree",
	"ahmedkhalf/project.nvim",
	"lewis6991/impatient.nvim",
	"norcalli/nvim-colorizer.lua",
	"tpope/vim-surround",

	-- sessions
	{ "dhruvasagar/vim-prosession", dependencies = { "tpope/vim-obsession" } },
	{ "echasnovski/mini.nvim", version = "*" },

	-- notes
	{
		"renerocksai/telekasten.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function()
			require("telekasten").setup({
				home = vim.fn.expand("~/telekasten-notes"),
			})
		end,
	},
	{
		"epwalsh/obsidian.nvim",
		version = "*",
		lazy = true,
		ft = "markdown",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},

	-- platform
	"wakatime/vim-wakatime",
	{
		"michaelrommel/nvim-silicon",
		lazy = true,
		cmd = "Silicon",
		init = function()
			local wk = require("which-key")
			wk.register({
				["<leader>sc"] = { ":Silicon<CR>", "[S]ilicon snapshot code" },
				{ mode = "v" },
			})
		end,
		config = function()
			require("silicon").setup({
				font = "JetBrainsMono Nerd Font=34;Noto Color Emoji=34",
				theme = "Dracula",
				background = "#94e2d5",
			})
		end,
	},
}
