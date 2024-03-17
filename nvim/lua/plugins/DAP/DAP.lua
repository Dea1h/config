vim.keymap.set('n','<leader>b',":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set('n','<leader>.',":lua require'dap'.step_over()<CR>")
vim.keymap.set('n','<leader>su',":lua require'dap'.step_out()<CR>")
vim.keymap.set('n','<leader>si',":lua require'dap'.step_into()<CR>")
vim.keymap.set('n','<leader>c',":lua require'dap'.continue()<CR>")
local dap = require('dap')
dap.adapters.codelldb = {
	name = "codelldb server",
	type = 'server',
	port = '${port}',
	executable = {
		command ='/home/neon/extension/adapter/codelldb',
		args = {"--port","${port}"},
	}
}
dap.configurations.c = {
	{
		name = "Launch File",
		type = "codelldb",
		request = "launch",
		program = function()
		 return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/','file')
		end,
		cwd = '${workspaceFolder}',
		stopOnEntry = false,
	}
}
