-- local transparent_status, transparent = pcall(require, "transparent")
-- if not transparent_status then
-- 	return
-- end
-- transparent.setup({
-- 	enable = true, -- boolean: enable transparent
-- 	extra_groups = { -- table/string: additional groups that should be cleared
-- 		"Comment",
-- 	},
-- 	exclude = {}, -- table: groups you don't want to clear
-- })

-- set colorscheme to onedark with protected call
-- in case it isn't installed
-- local ok, _ = pcall(vim.cmd, "colorscheme onedark")
-- local ok, _ = pcall(vim.cmd, "colorscheme everforest")
-- local ok, _ = pcall(vim.cmd, "colorscheme iceberg")
-- local ok, nord = pcall(require, "nord")
-- local ok, _ = pcall(vim.cmd, "colorscheme codedark")

-- if not ok then
-- 	print("Colorscheme not found!")
-- 	return
-- end

-- vim.g.nord_contrast = true
-- vim.g.nord_borders = false
-- vim.g.nord_disable_background = false
-- vim.g.nord_italic = false
-- vim.g.nord_uniform_diff_background = true
-- vim.g.nord_bold = false
-- nord.set()

-------rose-pine theme begin -------------
-- require("rose-pine").setup({ disable_italics = true })
-- vim.cmd("colorscheme rose-pine")
-------rose-pine theme ends -------------

--------- gh theme begin -------------
-- local ok, color = pcall(require, "github-theme")
-- if not ok then
-- 	print("Colorscheme not found!")
-- 	return
-- end

-- color.setup({
-- 	options = {
-- 		transparent = false,
-- 		hide_end_of_buffer = true,
-- 		hide_nc_statusline = true,
-- 		styles = {
-- 			comments = "NONE",
-- 			functions = "italic",
-- 			keywords = "bold",
-- 		},
-- 	},

-- 	specs = {
-- 		github_dark = {
-- 			diag = {
-- 				error = "#660000",
-- 				hint = "magenta.base",
-- 			},
-- 		},
-- 		all = {
-- 			diag = {
-- 				error = "#ff0000",
-- 				hint = "orange",
-- 			},
-- 		},
-- 	},

-- 	groups = {
-- 		all = {
-- 			htmlTag = { fg = "palette.red", bg = "#282c34", sp = "diag.hint", style = "italic" },
-- 			DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
-- 			-- this will remove the highlight groups
-- 			TSField = {},
-- 		},
-- 	},
-- })
-- vim.cmd("colorscheme github_dark")
--------- gh theme ends -------------

--------- dracula theme begin -------------
-- vim.cmd([[colorscheme dracula-soft]])
--------- dracula theme end -------------

--------- catppuccin theme begin -------------
-- local ok, catppuccin = pcall(require, "catppuccin")
-- if not ok then
-- 	print("Colorscheme not found!")
-- 	return
-- end
-- catppuccin.setup({
-- 	flavour = "mocha", -- latte, frappe, macchiato, mocha
-- 	background = { -- :h background
-- 		light = "latte",
-- 		dark = "mocha",
-- 	},
-- 	transparent_background = false,
-- 	show_end_of_buffer = false, -- show the '~' characters after the end of buffers
-- 	term_colors = false,
-- 	dim_inactive = {
-- 		enabled = false,
-- 		shade = "dark",
-- 		percentage = 0.15,
-- 	},
-- 	no_italic = false, -- Force no italic
-- 	no_bold = false, -- Force no bold
-- 	styles = {
-- 		comments = { "italic" },
-- 		conditionals = { "italic" },
-- 		loops = {},
-- 		functions = {},
-- 		keywords = {},
-- 		strings = {},
-- 		variables = {},
-- 		numbers = {},
-- 		booleans = {},
-- 		properties = {},
-- 		types = {},
-- 		operators = {},
-- 	},
-- 	color_overrides = {},
-- 	custom_highlights = {},
-- 	integrations = {
-- 		cmp = true,
-- 		gitsigns = true,
-- 		nvimtree = true,
-- 		telescope = true,
-- 		notify = false,
-- 		mini = false,
-- 	},
-- })

-- vim.cmd.colorscheme("catppuccin")
--------- catppuccin theme end ---------------

--------- tokyonight theme begin -------------
-- local ok, tokyonight = pcall(require, "tokyonight")
-- if not ok then
-- 	print("Colorscheme not found!")
-- 	return
-- end

-- tokyonight.setup({
-- 	transparent = false,
-- 	style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
-- 	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
-- 	styles = {
-- 		comments = { italic = true },
-- 		keywords = { italic = true },
-- 		functions = {},
-- 		variables = {},
-- 		-- Background styles. Can be "dark", "transparent" or "normal"
-- 		-- sidebars = "dark", -- style for sidebars, see below
-- 		-- floats = "dark", -- style for floating windows
-- 	},
-- 	-- color_overrides = {},
-- 	-- custom_highlights = {},
-- })
--------- tokyonight theme end -------------

-- vim.cmd([[set background=dark]])

--------- catppuccin begin -------------
local ok, catppuccin = pcall(require, "catppuccin")
if not ok then
	return
end
local colors = require("catppuccin.palettes").get_palette() -- fetch colors from palette
require("catppuccin.lib.highlighter").syntax({
	Comment = { fg = colors.surface0 },
})
catppuccin.setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	background = { -- :h background
		light = "latte",
		dark = "mocha",
	},
	transparent_background = false,
	show_end_of_buffer = false, -- show the '~' characters after the end of buffers
	term_colors = false,
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	no_italic = false, -- Force no italic
	no_bold = false, -- Force no bold
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	color_overrides = {},
	custom_highlights = {},
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		telescope = true,
		notify = false,
		mini = false,
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
})

vim.cmd.colorscheme("catppuccin")
-------catppuccin ends -------------
