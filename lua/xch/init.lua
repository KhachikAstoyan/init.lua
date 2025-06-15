require("xch.remap")
require("xch.lazy")

vim.opt.nu = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#404040', bold=false })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#404040", bold = false })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#404040', bold=false })

-- disable default command bar
vim.opt.cmdheight = 0

-- highlight yanks
vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  group = "YankHighlight",
  callback = function()
    vim.highlight.on_yank { higroup = "IncSearch", timeout = 200 }
  end,
})

-- theme
vim.cmd [[colorscheme catppuccin-mocha]]
vim.cmd [[set laststatus=3]]
