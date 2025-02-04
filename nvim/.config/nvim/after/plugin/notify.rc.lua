local status, notify = pcall(require, "notify")
if not status then
	return
end
local opts = {
	background_colour = "#000000",
	fps = 30,
	icons = {
		DEBUG = "",
		ERROR = "",
		INFO = "",
		TRACE = "✎",
		WARN = "",
	},
	level = 2,
	minimum_width = 50,
	render = "default",
	stages = "fade",
	timeout = 1000,
	top_down = true,
}

notify.setup(opts)
