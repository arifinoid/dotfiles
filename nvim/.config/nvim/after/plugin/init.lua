-- vim.cmd(":TSInstall bash css fish go graphql javascript json lua markdown python rust sql tsx typescript yaml");

local status, notify = pcall(require, "notify")
if not status then
	return
end
vim.notify = notify
