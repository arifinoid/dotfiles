local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

function get_config(name)
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
use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate", event = "BufWinEnter", config = get_config('treesitter-config')}
use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons', event = "BufWinEnter", config = get_config('bufferline-config')}
use {'rose-pine/neovim', config = get_config('theme')}
use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}, cmd = "NvimTreeToggle", config = get_config('nvim-tree-config')}
use {'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter"}
use {'p00f/nvim-ts-rainbow', after = "nvim-treesitter"}
use {'windwp/nvim-autopairs', config = get_config('autopairs-config'), after = "nvim-cmp"}
use {'folke/which-key.nvim', event = "BufWinEnter", config = get_config('whichkey-config')}
use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}, cmd = "Telescope", config = get_config('telescope-config')}
use {'neovim/nvim-lspconfig', config = get_config('lsp'), after = "nvim-cmp"}
use {
  "hrsh7th/nvim-cmp",
  requires = {
    {"hrsh7th/cmp-nvim-lsp"}, {"hrsh7th/cmp-buffer"}, {"hrsh7th/cmp-path"}, {"hrsh7th/cmp-cmdline"}, {"hrsh7th/cmp-vsnip"},
    {"f3fora/cmp-spell", {"hrsh7th/cmp-calc"}, {"hrsh7th/cmp-emoji"}}
  }
}
use {'hrsh7th/vim-vsnip', after = "nvim-cmp"}
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
use {'glepnir/dashboard-nvim', event = "BufWinEnter", config = get_config('dashboard-config')}
use {"lukas-reineke/indent-blankline.nvim", config = get_config('blankline-config'), event = "BufRead"}
use {"akinsho/toggleterm.nvim", config = get_config('toggleterm-config')}
use {'terrortylor/nvim-comment', config = get_config('comment-config')}
use {'terryma/vim-multiple-cursors'}
use {'psliwka/vim-smoothie'}

