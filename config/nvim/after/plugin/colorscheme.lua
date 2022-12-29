-- set colorscheme to onedark with protected call
-- in case it isn't installed
-- local status, _ = pcall(vim.cmd, "colorscheme onedark")
-- local status, _ = pcall(vim.cmd, "colorscheme iceberg")
local status, _ = pcall(vim.cmd, "colorscheme codedark")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

-- vim.cmd([[set background=dark]])
