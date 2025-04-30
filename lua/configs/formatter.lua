require("formatter").setup {
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },
    java = {
      require("formatter.filetypes.java")["clang-format"],
    },
    c = {
      require("formatter.filetypes.c")["clang-format"],
    },
    json = {
      require("formatter.filetypes.json")["clang-format"],
    },
    cpp = {
      require("formatter.filetypes.cpp")["clang-format"],
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock",
})
