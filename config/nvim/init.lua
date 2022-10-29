require("arifinoid.base")
require("arifinoid.keymaps")
require("arifinoid.plugins")

local has = function(x)
	return vim.fn.has(x) == 1
end
local is_mac = has("macunix")
local is_win = has("win32")

if is_mac then
	require("arifinoid.macos")
end
if is_win then
	require("arifinoid.windows")
end
