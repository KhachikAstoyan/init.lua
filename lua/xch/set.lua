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

--vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#404040', bold=false })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#404040", bold = false })
--vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#404040', bold=false })

-- statusline always at the bottom
vim.o.laststatus = 3

-- disable default command bar
vim.opt.cmdheight = 0

