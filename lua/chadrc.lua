-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}
-- local N = {}

-- N.override = {
--     ["@variable"] = { fg = "#829b82" },      -- Change all variables
--     ["@function"] = { fg = "#b8bb26" },
--     ["@function.call"] = { fg = "#b8bb26" },
--     ["@keyword.conditional"] = { fg = "#fb4934" },
--     ["@keyword.repeat"] = { fg = "#fb4934" },
--     ["@keyword.type"] = { fg = "#fb4934" },
-- }

M.base46 = {
	theme = "gruvbox",
  transparency = true,
  -- hl_override = N.override,
}

M.ui = {
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },

  terminal = {
    vertical = { width = 4.4 },
  },
}

M.colorify = {
  enabled = true,
  mode = "virtual",
}

return M
