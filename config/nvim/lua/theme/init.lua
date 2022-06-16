-- vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_italic_comments = true
-- vim.g.tokyonight_italic_keywords = true
-- vim.g.tokyonight_italic_variables = true
-- vim.g.tokyonight_sidebars = {"qf", "vista_kind", "terminal", "packer"}
-- vim.g.tokyonight_colors = {hint = "orange", error = "#ff0000"}
-- vim.g.tokyonight_terminal_colors = true
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_transparent_sidebar = true
-- vim.g.tokyonight_lualine_bold = true
-- vim.cmd [[colorscheme tokyonight]]
--
--
-- vim.cmd('colorscheme rose-pine')
-- require('onedark').setup {
--   style = 'cool'
-- }
-- require('onedark').load()
--
-- vim.cmd('syntax on')
-- vim.cmd('colorscheme onedark')
--

-- local base16 = require 'base16'
-- base16(base16.themes.brewer, true)

-- vim.o.background = "dark"
-- vim.g.vscode_transparent = 1
-- vim.g.vscode_italic_comment = 1
-- vim.g.vscode_disable_nvimtree_bg = true
-- vim.cmd([[colorscheme vscode]])

-- vim.cmd [[colorscheme nightfly]]

-- vim.g.everblushNR=1
-- vim.cmd [[colorscheme everblush]]

local onedarkpro = require("onedarkpro")
onedarkpro.setup({
  dark_theme = "onedark_dark", -- The default dark theme
  colors = {}, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
  hlgroups = {}, -- Override default highlight groups
  filetype_hlgroups = {}, -- Override default highlight groups for specific filetypes
  plugins = { -- Override which plugins highlight groups are loaded
      native_lsp = true,
      polygot = true,
      treesitter = true,
      -- NOTE: Other plugins have been omitted for brevity
  },
  styles = {
      strings = "NONE", -- Style that is applied to strings
      comments = "italic", -- Style that is applied to comments
      keywords = "italic", -- Style that is applied to keywords
      functions = "italic", -- Style that is applied to functions
      variables = "italic", -- Style that is applied to variables
      virtual_text = "NONE", -- Style that is applied to virtual text
  },
  options = {
      bold = true, -- Use the themes opinionated bold styles?
      italic = true, -- Use the themes opinionated italic styles?
      underline = true, -- Use the themes opinionated underline styles?
      undercurl = true, -- Use the themes opinionated undercurl styles?
      cursorline = true, -- Use cursorline highlighting?
      transparency = true, -- Use a transparent background?
      terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
      window_unfocussed_color = true, -- When the window is out of focus, change the normal background?
  }
})
onedarkpro.load()
