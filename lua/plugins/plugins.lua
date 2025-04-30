local plugins = {
  {
    "williamboman/mason.nvim",
    opts={
      ensure_installed={
        "typescript-language-server"
      }
    }
  },

  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function ()
      require "configs.lint"
    end
  },

  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function ()
      require("configs.formatter")
    end
  }
}

return plugins
