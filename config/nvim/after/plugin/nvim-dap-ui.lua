local status_ok, dap = pcall(require, "dap")
if not status_ok then
	return
end
local dapui = require("dapui")
dapui.setup({
	expand_lines = true,
	icons = { expanded = "", collapsed = "", circular = "" },
	mappings = {
		-- Use a table to apply multiple mappings
		expand = { "<CR>", "<2-LeftMouse>" },
		open = "o",
		remove = "d",
		edit = "e",
		repl = "r",
		toggle = "t",
	},
	layouts = {
		{
			elements = {
				{ id = "scopes", size = 0.33 },
				{ id = "breakpoints", size = 0.17 },
				{ id = "stacks", size = 0.25 },
				{ id = "watches", size = 0.25 },
			},
			size = 0.33,
			position = "right",
		},
		{
			elements = {
				{ id = "repl", size = 0.45 },
				{ id = "console", size = 0.55 },
			},
			size = 0.27,
			position = "bottom",
		},
	},
	floating = {
		max_height = 0.9,
		max_width = 0.5, -- Floats will be treated as percentage of your screen.
		border = vim.g.border_chars, -- Border style. Can be 'single', 'double' or 'rounded'
		mappings = {
			close = { "q", "<Esc>" },
		},
	},
})

dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end

-- until rcarriga/nvim-dap-ui#164 is fixed
local function notify_handler(msg, level, opts)
	if level >= "info" then
		return vim.notify(msg, level, opts)
	end

	opts = vim.tbl_extend("keep", opts or {}, {
		title = "dap-ui",
		icon = "",
		on_open = function(win)
			vim.api.nvim_buf_set_option(vim.api.nvim_win_get_buf(win), "filetype", "markdown")
		end,
	})
end

local dapui_ok, _ = xpcall(function()
	require("dapui.util").notify = notify_handler
end, debug.traceback)
