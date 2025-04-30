require("telescope").setup {
  defaults = {
    layout_strategy = "vertical",
    layout_config = {
      width = 0.5,
      height = 0.8,
      preview_cutoff = 20,
      mirror = false,
    },
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    file_browser = {
      hidden = true, -- This enables showing hidden files (dotfiles) by default
    },
    -- please take a look at the readme of the extension you want to configure
  },
}
-- Load the extension
require("telescope").load_extension "file_browser"
