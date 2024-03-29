require("arifinoid.base")
require("arifinoid.keymaps")
require("arifinoid.lazy_plugin_manager")

local has = function(x)
	return vim.fn.has(x) == 1
end

local is_mac = has("macunix")
local is_win = has("win32")

local ok, tree = pcall(require, "nvim-tree")
if not ok then
	return
end

tree.setup()

if is_mac then
	require("arifinoid.macos")
end
if is_win then
	require("arifinoid.windows")
end
