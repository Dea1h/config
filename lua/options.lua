require "nvchad.options"

vim.opt.relativenumber = true
vim.opt.cmdheight = 0
vim.opt.hlsearch = false

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8 -- minimal number of screen columns to keep to the left and right of the cursor if wrap is `false`
vim.opt.wrap = false

vim.opt.mouse = ""
-- vim.api.nvim_set_hl(0,"LineNr", { fg = "#FDF500" })
-- vim.api.nvim_set_hl(0,"CursorLineNr", { fg = "#FDF500" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#FFD65A" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#F6E7D2" })
local hl = vim.api.nvim_set_hl

vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.showtabline = 0 -- always show tabs
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.undofile = true -- enable persistent undo
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.cursorline = true -- highlight the current line
vim.opt.showcmd = false -- hide (partial) command in the last line of the screen (for performance)
vim.opt.iskeyword:append "-" -- treats words with `-` as single words
vim.opt.sidescrolloff = 10
-- Change variable name color to bright cyan (#56B6C2)
hl(0, "@variable", { fg = "#307D7E" })
hl(0, "@lsp.type.variable", { fg = "#307D7E" })
hl(0, "Identifier", { fg = "#307D7E" })
-- vim.opt.softtabstop = 2
-- vim.opt.tabstop = 2
-- vim.opt.shiftwidth = 2
-- vim.opt.expandtab = true

-- vim.opt.smartindent = true
