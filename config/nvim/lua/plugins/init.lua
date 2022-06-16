local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

local function get_config(name)
  return string.format("require(\"%s\")", name)
end

-- bootstrap packer if not installed
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({"git", "clone", "https://github.com/wbthomason/packer.nvim", install_path})
  execute "packadd packer.nvim"
end

-- initialize and configure packer
local packer = require("packer")
packer.init {
  enable = true, -- enable profiling via :PackerCompile profile=true
  threshold = 0 -- the amount in ms that a plugins load time must be over for it to be included in the profile
}
local use = packer.use
packer.reset()

use 'wbthomason/packer.nvim'
use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}, event = "VimEnter", config = get_config('lualine-config')}
use {'nvim-treesitter/nvim-treesitter', run=":TSUpdate", config = "require('treesitter-config')", commit = '668de0951a36ef17016074f1120b6aacbe6c4515'}
use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons', config = get_config('bufferline-config')}

-- dark colorscheme plugins
-- use {'rose-pine/neovim', config = get_config('theme')}
-- use {'navarasu/onedark.nvim', config = get_config('theme')}
-- use {'folke/tokyonight.nvim', config = get_config('theme')}
-- use {'norcalli/nvim-base16.lua', config = get_config('theme')} 
-- use {'joshdick/onedark.vim', config = get_config('theme')}
-- use {'bluz71/vim-nightfly-guicolors', config = get_config('theme')}
-- use {'Mofiqul/vscode.nvim', config = get_config('theme')} 
-- use {'mangeshrex/everblush.vim', config = get_config('theme')}
-- use {'EdenEast/nightfox.nvim', config = get_config('theme')}
-- use {'rebelot/kanagawa.nvim', config = get_config('theme')}
-- use({ "catppuccin/nvim", as = "catppuccin" })

use {'olimorris/onedarkpro.nvim', config = get_config('theme')}
use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}, cmd = "NvimTreeToggle", config = "require('nvim-tree-config')"}
use {'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter"}
use {'p00f/nvim-ts-rainbow', after = "nvim-treesitter"}
use {'windwp/nvim-autopairs', config = get_config('autopairs-config'), after = "nvim-cmp"}
use {'folke/which-key.nvim', config = get_config('whichkey-config')}
use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}, cmd = "Telescope", config = get_config('telescope-config')}
use {'neovim/nvim-lspconfig', config = get_config('lsp'), after = "nvim-cmp"}
use {'glepnir/lspsaga.nvim', config = get_config('lspsaga-config'), after = "nvim-cmp"}
use {'hrsh7th/cmp-nvim-lsp'}
use {"hrsh7th/nvim-cmp"}
use {'hrsh7th/cmp-vsnip'}
use {'hrsh7th/vim-vsnip'}
use {'onsails/lspkind-nvim'}
use {'lukas-reineke/format.nvim', config = get_config('format-config'), cmd = "Format"}
use {'norcalli/nvim-colorizer.lua', config = get_config('colorizer-config'), event = "BufReadPre"}
use {
  'lewis6991/gitsigns.nvim',
  requires = {'nvim-lua/plenary.nvim'},
  config = function()
    require('gitsigns').setup {current_line_blame = true}
  end
}
use {'glepnir/dashboard-nvim', event = "BufRead", config = get_config('dashboard-config')}
use {"lukas-reineke/indent-blankline.nvim", config = get_config('blankline-config')}
use {"akinsho/toggleterm.nvim", config = get_config('toggleterm-config')}
use {'terrortylor/nvim-comment', config = get_config('comment-config')}
use {'terryma/vim-multiple-cursors'}
use {'psliwka/vim-smoothie'}
use {'williamboman/nvim-lsp-installer'}
use {'jose-elias-alvarez/null-ls.nvim', config = "require('null-ls-config')"}
use {"folke/zen-mode.nvim", config = 'require("zen-mode-config")'}
use {"folke/twilight.nvim", config = "require('twilight-config')"}
