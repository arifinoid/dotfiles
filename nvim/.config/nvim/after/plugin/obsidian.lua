local status, obsidian = pcall(require, "obsidian")
if not status then
	return
end

obsidian.setup({
	workspaces = {
		{
			name = "obsidian-vault",
			path = "~/Documents/obsidian/",
		},
	},
	completion = {
		nvim_cmp = true,
		min_chars = 2,
	},
	new_notes_location = "current_dir",
	mappings = {
		-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
		["gf"] = {
			action = function()
				return obsidian.util.gf_passthrough()
			end,
			opts = { noremap = false, expr = true, buffer = true },
		},
		-- Toggle check-boxes.
		["<leader>ch"] = {
			action = function()
				return obsidian.util.toggle_checkbox()
			end,
			opts = { buffer = true },
		},
	},
	templates = {
		subdir = "Templates",
		date_format = "%Y-%m-%d",
		time_format = "%H:%M",
		substitutions = {
			yesterday = function()
				return os.date("%Y-%m-%d", os.time() - 86400)
			end,
			tomorrow = function()
				return os.date("%Y-%m-%d", os.time() + 86400)
			end,
		},
	},
	ui = {
		enable = true,
	},
})
