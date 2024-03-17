local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
	"git",
	"clone",
	"--filter=blob:none",
	"https://github.com/folke/lazy.nvim.git",
	"--branch=stable",
	lazypath,
      })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"ellisonleao/gruvbox.nvim",
	"nvim-treesitter/nvim-treesitter",	
	"nvim-tree/nvim-web-devicons",
	"nvim-telescope/telescope.nvim", tag = '0.1.5',
	"nvim-lua/plenary.nvim",
	"windwp/nvim-autopairs",
	"akinsho/toggleterm.nvim",
	"kdheepak/lazygit.nvim",
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
	"MunifTanjim/nui.nvim",
	"VonHeikemen/fine-cmdline.nvim",
	"numToStr/Comment.nvim",
	"stevearc/dressing.nvim",
	"nvimdev/dashboard-nvim",
	"nvim-lualine/lualine.nvim",
})
