local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

ts.setup({
	highlight = {
		enable = true,
		disable = {},
		additional_vim_regex_highlighting = false,
	},
	sync_install = false,
	indent = {
		enable = true,
		disable = {},
	},
	ensure_installed = {
		"help",
		"tsx",
		"toml",
		"fish",
		"php",
		"json",
		"yaml",
		"go",
		"css",
		"html",
		"lua",
		"python",
		"javascript",
		"typescript",
	},
	autotag = {
		enable = true,
	},
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
