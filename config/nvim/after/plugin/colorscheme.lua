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
-- local ok, color = pcall(vim.cmd, "colorscheme tokyonight-night")
local ok, color = pcall(require, "github-theme")

-- require("rose-pine").setup({ disable_italics = true })
-- vim.cmd("colorscheme rose-pine")

if not ok then
	print("Colorscheme not found!")
	return
end

-- vim.g.nord_contrast = true
-- vim.g.nord_borders = false
-- vim.g.nord_disable_background = false
-- vim.g.nord_italic = false
-- vim.g.nord_uniform_diff_background = true
-- vim.g.nord_bold = false

-- nord.set()

color.setup({
	theme_style = "dark",
	comment_style = "none",
	keyword_style = "none",
	dark_sidebar = false,
	colors = { error = "#ff0000" },
})

-- vim.cmd([[set background=dark]])

-- catppuccin
-- local catppuccin = require("catppuccin")

-- catppuccin.setup({
--   term_colors = false,
--   styles = {comments = "italic", functions = "italic", keywords = "italic", strings = "NONE", variables = "NONE"},
--   integrations = {
--     treesitter = true,
--     native_lsp = {
--       enabled = true,
--       virtual_text = {errors = "italic", hints = "italic", warnings = "italic", information = "italic"},
--       underlines = {errors = "underline", hints = "underline", warnings = "underline", information = "underline"}
--     },
--     lsp_trouble = false,
--     lsp_saga = false,
--     gitgutter = false,
--     gitsigns = true,
--     telescope = true,
--     nvimtree = {enabled = true, show_root = true},
--     which_key = true,
--     indent_blankline = {enabled = true, colored_indent_levels = true},
--     dashboard = true,
--     neogit = false,
--     vim_sneak = false,
--     fern = false,
--     barbar = false,
--     bufferline = true,
--     markdown = false,
--     lightspeed = false,
--     ts_rainbow = true,
--     hop = false
--   }
-- })
-- vim.cmd('colorscheme catppuccin')
