return {
  {
    "stevearc/conform.nvim",
    lazy = true,
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    opts = {
      inlay_hints = {
        enabled = true,
      },
    },
    config = function()
      require "configs.lspconfig"
      require "configs.lsp"
    end,
  },

  {
    "VonHeikemen/fine-cmdline.nvim",
    lazy = true,
    dependencies = {
      { "MunifTanjim/nui.nvim" },
    },
    opts = {},
  },

  {
    "nvim-telescope/telescope-file-browser.nvim",
    lazy = true,
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },

  {
    "Dea1h/Dashboard",
    lazy = true,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },

  {
    "echasnovski/mini.icons",
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = {
      "folke/snacks.nvim",
      lazy = true,
    },

    keys = {
      -- 👇 in this section, choose your own keymappings!
      {
        "<leader>-",
        mode = { "n", "v" },
        "<cmd>Yazi<cr>",
        desc = "Open yazi at the current file",
      },
      {
        -- Open in the current working directory
        "<leader>cw",
        "<cmd>Yazi cwd<cr>",
        desc = "Open the file manager in nvim's working directory",
      },
      {
        "<c-up>",
        "<cmd>Yazi toggle<cr>",
        desc = "Resume the last yazi session",
      },
    },
    opts = {
      -- if you want to open yazi instead of netrw, see below for more info
      open_for_directories = false,
      keymaps = {
        show_help = "<f1>",
      },
    },
    -- 👇 if you use `open_for_directories=true`, this is recommended
    init = function()
      -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
      -- vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,
  },
  {
    "sainnhe/sonokai",
    priority = 1000,
    config = function()
      vim.g.sonokai_transparent_background = "1"
      vim.g.sonokai_enable_italic = "1"
      vim.g.sonokai_style = "andromeda"
      vim.cmd.colorscheme "sonokai"
    end,
  },
}
