return {
  "folke/trouble.nvim",
  opts = {
    modes = {
      test = {
        mode = "diagnostics",
        preview = {
          type = "split",
          relative = "win",
          position = "right",
          size = 0.3,
        },
      },
    },
  },
  cmd = "Trouble",
  keys = {
    -- 🔍 Diagnostics
    {
      "<leader>dp",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Workspace, Trouble)",
    },
    {
      "<leader>db",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Diagnostics (Buffer, Trouble)",
    },
    {
      "<leader>do",
      vim.diagnostic.open_float,
      desc = "Show Diagnostic Under Cursor",
    },
    {
      "<leader>dq",
      vim.diagnostic.setloclist,
      desc = "Diagnostics → Location List",
    },
    {
      "]d",
      function() vim.diagnostic.goto_next({ float = false }) end,
      desc = "Next Diagnostic",
    },
    {
      "[d",
      function() vim.diagnostic.goto_prev({ float = false }) end,
      desc = "Previous Diagnostic",
    },

    -- 📑 Symbols
    {
      "<leader>ss",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },

    -- 📚 LSP references / definitions
    {
      "<leader>ll",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / References (Trouble)",
    },

    -- 📋 Lists
    {
      "<leader>lq",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
    {
      "<leader>lls",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
  },
}

