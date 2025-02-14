--- This module will load a random colorscheme on nvim startup process.

local utils = require("utils")

local M = {}

-- Colorscheme to its directory name mapping, because colorscheme repo name is not necessarily
-- the same as the colorscheme name itself.
M.colorscheme2dir = {
  gruvbox8 = "vim-gruvbox8",
  onedark = "onedark.nvim",
  edge = "edge",
  sonokai = "sonokai",
  gruvbox_material = "gruvbox-material",
  nord = "nord.nvim",
  doom_one = "doom-one.nvim",
  darkplus = "darkplus.nvim",
  everforest = "everforest",
  nightfox = "nightfox.nvim",
  kanagawa = "kanagawa.nvim",
  catppuccin = "catppuccin",
  vscode = "vscode.nvim",
  papercolor = "papercolor-theme"
}

M.darkplus = function()
  vim.cmd([[colorscheme darkplus]])
end

M.gruvbox8 = function()
  -- Italic options should be put before colorscheme setting,
  -- see https://github.com/morhetz/gruvbox/wiki/Terminal-specific#1-italics-is-disabled
  vim.g.gruvbox_italics = 1
  vim.g.gruvbox_italicize_strings = 1
  vim.g.gruvbox_filetype_hi_groups = 1
  vim.g.gruvbox_plugin_hi_groups = 1

  vim.cmd([[colorscheme gruvbox8_hard]])
end

M.onedark = function()
  vim.cmd([[colorscheme onedark]])
end

M.edge = function()
  vim.g.edge_enable_italic = 1
  vim.g.edge_better_performance = 1

  vim.cmd([[colorscheme edge]])
end

M.sonokai = function()
  vim.g.sonokai_enable_italic = 1
  vim.g.sonokai_better_performance = 1

  vim.cmd([[colorscheme sonokai]])
end

M.gruvbox_material = function()
  vim.g.gruvbox_material_enable_italic = 1
  vim.g.gruvbox_material_better_performance = 1

  vim.cmd([[colorscheme gruvbox-material]])
end

M.nord = function()
  vim.cmd([[colorscheme nord]])
end

M.doom_one = function()
  vim.cmd([[colorscheme doom-one]])
end

M.everforest = function()
  vim.g.everforest_enable_italic = 1
  vim.g.everforest_better_performance = 1

  vim.cmd([[colorscheme everforest]])
end

M.nightfox = function()
  vim.cmd([[colorscheme nordfox]])
end

M.kanagawa = function()
  require("kanagawa").setup({
    transparent = true,
    colors = {
      theme = {
        all = {
          ui = {
            bg_gutter = "none"
          }
        }
      },
      palette = {
        oniViolet = "#9A00DB",
        crystalBlue = "#008CDB",
        fujiGray = "#A3D4D5",
        -- fujiWhite = "#ffffff",
        -- sumlink4 = "#ffffff"
      }
    },
    theme = "wave",
  })
  vim.cmd([[colorscheme kanagawa-lotus]])
  -- vim.cmd([[colorscheme kanagawa]])
end

M.catppuccin = function()
  -- available option: latte, frappe, macchiato, mocha
  vim.g.catppuccin_flavour = "frappe"

  require("catppuccin").setup()

  vim.cmd([[colorscheme catppuccin]])
end

M.vscode = function()
  vim.g.vscode_enable_transparent = true

  vim.cmd([[colorscheme vscode]])
end

M.papercolor = function()
  vim.g.PaperColor_Theme_Options = {
    theme = {
      default = {
        transparent_background = 1,
        light = {
          override = {
            color00 = "#eeeeee",
            color01 = "#af0000",
            color02 = "#008700",
            color03 = "#5f8700",
            color04 = "#0087af",
            color05 = "#878787",
            color06 = "#005f87",
            color07 = "#444444",
            color08 = "#bcbcbc",
            color09 = "#d70000",
            color10 = "#d70087",
            color11 = "#8700af",
            color12 = "#d75f00",
            color13 = "#d75f00",
            color14 = "#005faf",
            color15 = "#005f87",
            linenumber_bg = "['#080808', '#ffffff']",
            -- linenumber_fg = "['#ffffff', '#ffffff']"
          }
        }
      }
    }
  }
  vim.cmd([[set background=light]])
  vim.cmd([[colorscheme PaperColor]])
end

--- Use a random colorscheme from the pre-defined list of colorschemes.
M.rand_colorscheme = function()
  local colorscheme = utils.rand_element(vim.tbl_keys(M.colorscheme2dir))
  if vim.g.vscode then
    colorscheme = "darkplus"
  else
    colorscheme = "kanagawa"
    -- colorscheme = "papercolor"
  end

  if not vim.tbl_contains(vim.tbl_keys(M), colorscheme) then
    local msg = "Invalid colorscheme: " .. colorscheme
    vim.notify(msg, vim.log.levels.ERROR, { title = "nvim-config" })

    return
  end

  -- Load the colorscheme, because all the colorschemes are declared as opt plugins, so the colorscheme isn't loaded yet.
  local status = utils.add_pack(M.colorscheme2dir[colorscheme])

  if not status then
    local msg = string.format("Colorscheme %s is not installed. Run PackerSync to install.", colorscheme)
    vim.notify(msg, vim.log.levels.ERROR, { title = "nvim-config" })

    return
  end

  -- Load the colorscheme and its settings
  M[colorscheme]()

  if vim.g.logging_level == "debug" then
    local msg = "Colorscheme: " .. colorscheme

    vim.notify(msg, vim.log.levels.DEBUG, { title = "nvim-config" })
  end
end

-- Load a random colorscheme
-- if not vim.g.vscode then
  M.rand_colorscheme()
-- end
