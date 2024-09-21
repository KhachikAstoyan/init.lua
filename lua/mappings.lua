require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-b>", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })

-- opening terminal
map("n", "<leader>tev", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "terminal new horizontal window" })

map("n", "<leader>teh", function()
  require("nvchad.term").new { pos = "vsp" }
end, { desc = "terminal new vertical window" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Copy to clipboard
map("v", "<leader>y", '"+y', { desc = "copy to clipboard" })
map("n", "<leader>Y", '"+yg_', { desc = "copy to clipboard?" })
map("n", "<leader>y", '"+y', { desc = "copy to clipboard" })
map("n", "<leader>yy", '"+yy', { noremap = true, silent = true })

-- Paste from clipboard
map("n", "<leader>p", '"+p', { desc = "paste from clipboard" })
map("n", "<leader>P", '"+P', { noremap = true, silent = true })
map("v", "<leader>p", '"+p', { noremap = true, silent = true })
map("v", "<leader>P", '"+P', { noremap = true, silent = true })

-- change delete registers
map("n", "d", '"_d', { noremap = true, silent = true })

-- rename symbols
map("n", "<leader>rn", ":IncRename ", { desc = "Rename symbol" })

