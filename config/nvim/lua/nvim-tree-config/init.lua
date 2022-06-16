vim.g.nvim_tree_width = 15
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1,
  folder_arrows = 1,
}
require'nvim-tree'.setup {auto_open = 1, auto_close = 1, gitignore = 1}
