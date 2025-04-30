require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "jk", "<ESC>")
-- map("n", "<leader>fd", ":Telescope file_browser<CR>")
map("n", "<leader>fd", ":Yazi<CR>")
-- map("n", ";", ":FineCmdline<CR>")

map("n", ":", ":FineCmdline<CR>")
-- map("i", "<S-x>", "<BS>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>{", "f{a", { noremap = true })
vim.keymap.set("n", "<leader>(", "f(a", { noremap = true })

vim.keymap.set("n", "<C-o>", ":put _<CR>", { noremap = true, silent = true }) -- New line below
-- vim.keymap.set("n", "q", ":q<CR>", { noremap = true, silent = true })
