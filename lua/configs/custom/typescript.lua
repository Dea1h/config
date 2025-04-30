local config = require("configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities


require'lspconfig'.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    }
  }
}
