local dap_ui = require('dapui')
dap_ui.setup()
vim.keymap.set('n','<leader>o',":lua require('dapui').open()<CR>")
vim.keymap.set('n','<leader>t',":lua require('dapui').close()<CR>")

