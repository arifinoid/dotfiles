local ls = require("luasnip")
local types = require("luasnip.util.types")
local extras = require("luasnip.extras")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = extras.rep

ls.add_snippets("go", {
	s("goprintf", {
		t("fmt.Printf(", i(1), t("%+v\\n, "), rep(1), t({ ")", "" })),
	}),
})

ls.config.set_config({
	history = true,
	-- Update more often, :h events for more info.
	update_events = "TextChanged,TextChangedI",
	-- Snippets aren't automatically removed if their text is deleted.
	-- `delete_check_events` determines on which events (:h events) a check for
	-- deleted snippets is performed.
	-- This can be especially useful when `history` is enabled.
	delete_check_events = "TextChanged",
	ext_opts = {
		[types.choiceNode] = {
			active = {
				virt_text = { { "choiceNode", "Comment" } },
			},
		},
	},
	-- treesitter-hl has 100, use something higher (default is 200).
	ext_base_prio = 300,
	-- minimal increase in priority.
	ext_prio_increase = 1,
	enable_autosnippets = true,
	-- mapping for cutting selected text so it's usable as SELECT_DEDENT,
	-- SELECT_RAW or TM_SELECTED_TEXT (mapped via xmap).
	store_selection_keys = "<Tab>",
})

require("luasnip.loaders.from_lua").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load()

-- <c-l> is selecting within a list of options.
vim.keymap.set({ "s", "i" }, "<c-l>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { desc = "Scroll through choice nodes" })

vim.keymap.set("i", "<Tab>", function()
	return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<Tab>"
end, { desc = "Expand or jump snippet", expr = true, silent = true })

vim.keymap.set("s", "<Tab>", function()
	require("luasnip").jump(1)
end, { desc = "Expand or jump snippet", expr = true, silent = true })

vim.keymap.set("i", "<S-Tab>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end, { desc = "Jump backwards snippet" })
