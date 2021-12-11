local o = vim.opt
local wo = vim.wo
local fn = vim.fn
local bo = vim.bo

vim.cmd(':set guicursor=i:blinkwait700-blinkon400-blinkoff250-ver25-iCursor')
vim.cmd(':set guicursor+=n:hor20-Cursor/lCursor')
vim.cmd('filetype plugin indent on')
o.shortmess = o.shortmess + "c"
o.hidden = true
o.whichwrap = 'b,s,<,>,[,],h,l'
o.pumheight = 8
o.fileencoding = 'utf-8'
o.cmdheight = 1
o.splitbelow = true
o.splitright = true
o.termguicolors = true
o.conceallevel = 0
o.showtabline = 2
o.showmode = false
o.backup = false
o.writebackup = false
o.updatetime = 300
o.timeoutlen = 100
o.clipboard = "unnamedplus"
o.hlsearch = false
o.ignorecase = true
o.scrolloff = 3
o.sidescrolloff = 5
o.mouse = "a"
o.smartcase = true
o.smartindent = true
wo.wrap = false
wo.number = true
o.cursorline = true
o.relativenumber = true
o.signcolumn = "yes"
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.autoindent = true
o.expandtab = true
bo.expandtab = true
bo.shiftwidth = 2
bo.tabstop = 2
bo.autoindent = true
