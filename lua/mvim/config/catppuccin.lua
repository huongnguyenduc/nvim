local M = {}

function M.setup()
  local colors = require("catppuccin.palettes").get_palette()

  require("catppuccin").setup({
    transparent_background = true,
    styles = {
      functions = { "bold", "italic" },
      keywords = { "bold" },
    },
    integrations = {
      nvimtree = true,
      dashboard = false,
      hop = true,
      neotree = true,
      notify = true,
      mason = true,
      which_key = true,
      dap = { enabled = true, enable_ui = true },
    },
    custom_highlights = {},
    highlight_overrides = {
      all = {
        FloatBorder = { fg = colors.surface2 },
        TelescopeBorder = { fg = colors.surface2 },
        WhichKeyBorder = { fg = colors.surface2 },
        NeoTreeFloatBorder = { fg = colors.surface2 },
        IndentBlanklineContextChar = { fg = colors.overlay0 },
      },
    },
  })

  mo.style.palettes = colors
end

return M
