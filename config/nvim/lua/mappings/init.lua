vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
default_options = {noremap = true, silent = true}
-- normal mode
map('n', '<C-h>', '<C-w>h', default_options)
map('n', '<C-l>', '<C-w>l', default_options)
map('n', '<C-j>', '<C-w>j', default_options)
map('n', '<C-k>', '<C-w>k', default_options)
map('n', 'ss', ':split<Return><C-w>w', default_options)
map('n', 'sv', ':vsplit<Return><C-w>w', default_options)
map('n', '<C-J>', '<C-W><C-J>', default_options)
map('n', '<C-H>', '<C-W><C-H>', default_options)
map('n', '<C-K>', '<C-W><C-K>', default_options)
map('n', '<C-L>', '<C-W><C-L>', default_options)
map('n', '<C-b>', ':NvimTreeToggle<CR>', default_options)
map("n", "<Left>", ":vertical resize +1<CR>", default_options)
map("n", "<Right>", ":vertical resize -1<CR>", default_options)
map("n", "<Up>", ":resize -1<CR>", default_options)
map("n", "<Down>", ":resize +1<CR>", default_options)
-- visual mode
map('v', '<', '<gv', default_options)
map('v', '>', '>gv', default_options)

