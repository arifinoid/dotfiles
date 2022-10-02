local o = vim.opt
local wo = vim.wo
local bo = vim.bo

local augroup = vim.api.nvim_create_augroup
local yank_group = augroup('HighlightYank', {})

local autocmd = vim.api.nvim_create_autocmd
autocmd('TextYankPost', {
  group = yank_group,
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 40,
    })
  end,
})

vim.cmd(":set guicursor=i:blinkwait700-blinkon400-blinkoff250-ver25-iCursor")
vim.cmd(":set guicursor+=n:hor20-Cursor/lCursor")
vim.cmd("filetype plugin indent on")
o.shortmess = o.shortmess + "c"
o.hidden = true
o.whichwrap = "b,s,<,>,[,],h,l"
o.pumheight = 8
o.fileencoding = "utf-8"
o.cmdheight = 1
o.splitbelow = true
o.splitright = true
o.conceallevel = 0
o.showtabline = 2
o.showmode = false
o.backup = false
o.writebackup = false
o.updatetime = 300
o.timeoutlen = 100
o.clipboard = "unnamedplus"
o.hlsearch = false
o.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
o.scrolloff = 3
o.sidescrolloff = 5
o.mouse = "a"
o.smartcase = true
o.smartindent = true
o.relativenumber = true
o.signcolumn = "yes"
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.autoindent = true
o.expandtab = true
o.wrap = false -- No Wrap lines
o.path:append { '**' } -- Finding files - Search down into subfolders
o.formatoptions:append { 'r' }

-- highlights
o.cursorline = true
o.termguicolors = true
o.winblend = 0
o.wildoptions = 'pum'
o.pumblend = 5
o.background = 'dark'

wo.wrap = false
wo.number = true

bo.expandtab = true
bo.shiftwidth = 2
bo.tabstop = 2
bo.autoindent = true
