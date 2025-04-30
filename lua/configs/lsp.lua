require("lspconfig").rust_analyzer.setup {
  settings = {
    ["rust-analyzer"] = {
      diagnostics = {
        enable = false,
      },
    },
  },
}

require("lspconfig").clangd.setup {}

local config = require "configs.lspconfig"

local on_attach = config.on_attach
local capabilities = config.capabilities

require("lspconfig").ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
}

require("lspconfig").jdtls.setup {}
