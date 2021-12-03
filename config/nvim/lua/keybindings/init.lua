vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
-- normal mode
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
map('n', 'ss', ':split<Return><C-w>w', {noremap = true, silent = true})
map('n', 'sv', ':vsplit<Return><C-w>w', {noremap = true, silent = true})
map('n', '<C-J>', '<C-W><C-J>', {noremap = true, silent = true})
map('n', '<C-H>', '<C-W><C-H>', {noremap = true, silent = true})
map('n', '<C-K>', '<C-W><C-K>', {noremap = true, silent = true})
map('n', '<C-L>', '<C-W><C-L>', {noremap = true, silent = true})
map('n', '<C-b>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
-- visual mode
map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

