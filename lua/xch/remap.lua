vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex )

-- moving between windows
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- split windows
vim.api.nvim_set_keymap('n', '<leader>v', ':vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>h', ':split<CR>', { noremap = true, silent = true })

-- NvimTree mappings
vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', opts)

-- Switch buffers
  
-- Remap <Tab> to switch to the next buffer
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })

-- Remap <Shift-Tab> to switch to the previous buffer
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })

