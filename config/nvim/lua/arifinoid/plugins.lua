local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

-- bootstrap packer if not installed
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path })
  execute 'packadd packer.nvim'
end

-- initialize and configure packer
local packer = require('packer')
packer.init {
  enable = true, -- enable profiling via :PackerCompile profile=true
  threshold = 0 -- the amount in ms that a plugins load time must be over for it to be included in the profile
}
local use = packer.use
packer.reset()

use 'wbthomason/packer.nvim'
use { 'nvim-lualine/lualine.nvim' } -- Statusline
use({ 'nvim-lua/plenary.nvim', commit = '968a4b9afec0c633bc369662e78f8c5db0eba249' }) -- Common utilities
use 'onsails/lspkind-nvim' -- vscode-like pictograms


use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }

-- dark colorscheme plugins

-- use {'rose-pine/neovim' }
-- use {'navarasu/onedark.nvim' }
-- use {'folke/tokyonight.nvim' }
-- use {'norcalli/nvim-base16.lua' }
-- use {'bluz71/vim-nightfly-guicolors' }
-- use {'Mofiqul/vscode.nvim' }
-- use {'mangeshrex/everblush.vim' }
-- use {'EdenEast/nightfox.nvim' }
-- use {'rebelot/kanagawa.nvim' }
-- use({ 'catppuccin/nvim', as = 'catppuccin' })
use {'joshdick/onedark.vim' }

use({ 'ahmedkhalf/project.nvim', commit = '541115e762764bc44d7d3bf501b6e367842d3d4f' })
use 'kyazdani42/nvim-web-devicons' -- File icons
use({ 'kyazdani42/nvim-tree.lua', commit = 'bdb6d4a25410da35bbf7ce0dbdaa8d60432bc243' })
use({ 'numToStr/Comment.nvim', commit = '2c26a00f32b190390b664e56e32fd5347613b9e2' })
use { 'windwp/nvim-ts-autotag', event = 'InsertEnter', after = 'nvim-treesitter' }
use { 'p00f/nvim-ts-rainbow', after = 'nvim-treesitter' }
use { 'windwp/nvim-autopairs', after = 'nvim-cmp' }
use { 'folke/which-key.nvim' }
use 'nvim-telescope/telescope.nvim'
use({ 'lewis6991/impatient.nvim', commit = '969f2c5c90457612c09cf2a13fee1adaa986d350' })

-- LSP
use 'neovim/nvim-lspconfig' -- LSP
use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
use 'williamboman/mason.nvim'
use 'williamboman/mason-lspconfig.nvim'
use 'WhoIsSethDaniel/mason-tool-installer.nvim'
use { 'glepnir/lspsaga.nvim', commit = '04e8167740c66193686ea3d14b511c7b160ea755' }-- LSP UIs
use 'arkav/lualine-lsp-progress' -- LSP Status


-- CMP
use 'hrsh7th/nvim-cmp' -- Completion
use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
use({ 'hrsh7th/cmp-path', commit = '466b6b8270f7ba89abd59f402c73f63c7331ff6e' }) -- path completions
use({ 'saadparwaiz1/cmp_luasnip', commit = 'a9de941bcbda508d0a45d28ae366bb3f08db2e36' }) -- snippet completions
use({ 'hrsh7th/cmp-nvim-lua', commit = 'd276254e7198ab7d00f117e88e223b4bd8c02d21' })

-- snippets
use 'L3MON4D3/LuaSnip' --snippet engine
use({ 'rafamadriz/friendly-snippets', commit = 'd27a83a363e61009278b6598703a763ce9c8e617' }) -- a bunch of snippets to use

-- Git
use 'lewis6991/gitsigns.nvim'
use 'dinhhuy258/git.nvim'

use { 'lukas-reineke/format.nvim', cmd = 'Format' }
use 'norcalli/nvim-colorizer.lua'

use {
  'goolord/alpha-nvim',
  config = function()
    require 'alpha'.setup(require 'alpha.themes.theta'.config)
  end
}
use({
  "iamcco/markdown-preview.nvim",
  run = function() vim.fn["mkdp#util#install"]() end,
})

use { 'lukas-reineke/indent-blankline.nvim' }
use { 'akinsho/toggleterm.nvim' }
use { 'terrortylor/nvim-comment' }
use { 'terryma/vim-multiple-cursors' }
use { 'psliwka/vim-smoothie' }
use 'wakatime/vim-wakatime'
