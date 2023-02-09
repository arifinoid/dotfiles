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

	-- LSP
	"neovim/nvim-lspconfig",
	"prettier/vim-prettier",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"arkav/lualine-lsp-progress",
	"onsails/lspkind-nvim",

	"jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",

	-- autocompletion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-nvim-lua",

	--snippets
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	{
		"L3MON4D3/LuaSnip",
		event = "InsertEnter",
		config = function()
			require("arifinoid.snippets")
		end,
	},

	{
		"Exafunction/codeium.vim",
		config = function()
			vim.keymap.set("i", "<C-y>", function()
				return vim.fn["codeium#Accept"]()
			end, { expr = true })
			vim.keymap.set("i", "<c-;>", function()
				return vim.fn["codeium#CycleCompletions"](1)
			end, { expr = true })
			vim.keymap.set("i", "<c-,>", function()
				return vim.fn["codeium#CycleCompletions"](-1)
			end, { expr = true })
			vim.keymap.set("i", "<c-x>", function()
				return vim.fn["codeium#Clear"]()
			end, { expr = true })
		end,
	},

	-- debugging
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",

	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},

	{ "romgrk/barbar.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
	"nvim-tree/nvim-tree.lua",

	{ "lukas-reineke/indent-blankline.nvim", event = "BufEnter" },
	{ "nvim-treesitter/nvim-treesitter", dependencies = {
		"p00f/nvim-ts-rainbow",
	} },

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
	"j-hui/fidget.nvim",

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

	"dinhhuy258/git.nvim",
	{ "folke/tokyonight.nvim" },
	{ "phaazon/hop.nvim", branch = "v2", config = true, event = "BufEnter" },
	{ "lewis6991/gitsigns.nvim", config = true, event = "BufEnter" },
	{ "iamcco/markdown-preview.nvim", ft = "markdown" },
	{
		"folke/noice.nvim",
		config = function()
			require("noice").setup({
				lsp = {
					override = {
						["vim.lsp.util.convert_input_to_markdown_lines"] = true,
						["vim.lsp.util.stylize_markdown"] = true,
						["cmp.entry.get_documentation"] = true,
					},
				},
				presets = {
					bottom_search = true,
					command_palette = true,
					long_message_to_split = true,
					inc_rename = false,
					lsp_doc_border = false,
				},
			})
		end,
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
}
