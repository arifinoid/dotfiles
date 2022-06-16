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
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', default_options)
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', default_options)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', default_options)
map('n', 'gR', '<cmd>lua vim.lsp.buf.rename()<CR>', default_options)
map('n', 'gh', '<cmd>lua vim.lsp.buf.signature_help()<CR>', default_options)
map('n', 'gH', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', default_options)
map('n', '<C-J>', '<C-W><C-J>', default_options)
map('n', '<C-H>', '<C-W><C-H>', default_options)
map('n', '<C-K>', '<C-W><C-K>', default_options)
map('n', '<C-L>', '<C-W><C-L>', default_options)
map('n', '<C-b>', ':NvimTreeToggle<CR>', default_options)
map("n", "<Left>", ":vertical resize +1<CR>", default_options)
map("n", "<Right>", ":vertical resize -1<CR>", default_options)
map("n", "<Up>", ":resize -1<CR>", default_options)
map("n", "<Down>", ":resize +1<CR>", default_options)
map("n", "<C-w>", ":bdelete<CR>", default_options)
map("n", "<C-q>", ":bufdo bd<CR>", default_options)
map("n", "<C-s>", ":w<CR>", default_options)
map("n", "<C-p>", ":Telescope find_files<CR>", default_options)
map("n", "<C-f>", ":Telescope live_grep<CR>", default_options)
map("n", "gb", ":Telescope git_branches<CR>", default_options)
map("n", "gc", ":Telescope git_commits<CR>", default_options)
map("n", "gs", ":Telescope git_status<CR>", default_options)
map("n", "<J>", ":m .+1<CR>", default_options)
map("n", "<K>", ":m .-2<CR>", default_options)
map("n", "<C-z>", ":set foldmethod=expr<CR>", default_options)
map("n", "<C-x>", ":set foldexpr=nvim_treesitter#foldexpr()<CR>", default_options)

-- visual mode
map('v', '<', '<gv', default_options)
map('v', '>', '>gv', default_options)

-- Visual block
map("x", "J", ":move '>+1<CR>gv-gv", default_options)
map("x", "K", ":move '<-2<CR>gv-gv", default_options)

