require("winbar").setup({
  -- your configuration comes here, for example:
  icons = true,
  diagnostics = true,
  buf_modified = true,
  -- or use an icon
  buf_modified_symbol = "●",
  dim_inactive = {
    enabled = false,
    highlight = "WinbarNC",
    icons = true, -- whether to dim the icons
    name = true, -- whether to dim the name
  }
})
