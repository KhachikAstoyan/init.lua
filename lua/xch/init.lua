require("xch.remap")
require("xch.lazy")
require("xch.format")

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

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#404040", bold = false })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#404040", bold = false })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#404040", bold = false })

-- disable default command bar
vim.opt.cmdheight = 0

-- highlight yanks
vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	group = "YankHighlight",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
	end,
})

-- colors
local ok, _ = pcall(vim.cmd, "colorscheme catppuccin-mocha")
if not ok then
	vim.cmd("colorscheme default") -- if the above fails, then use default
end

-- fzf
local fzf = require("fzf-lua")

vim.keymap.set("n", "<leader>fp", fzf.files, { desc = "FzfLua find files" })
vim.keymap.set("n", "<leader>fd", fzf.diagnostics_document, { desc = "FzfLua diagnostics document" })
vim.keymap.set("n", "<leader>fw", fzf.diagnostics_workspace, { desc = "FzfLua diagnostics workspace" })
vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "FzfLua live grep" })
vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "FzfLua buffers" })
vim.keymap.set("n", "<leader>fh", fzf.help_tags, { desc = "FzfLua help tags" })
vim.keymap.set("n", "<leader>fs", fzf.lsp_document_symbols, { desc = "FzfLua document symbols" })
vim.keymap.set("n", "<leader>fws", fzf.lsp_workspace_symbols, { desc = "FzfLua workspace symbols" })
vim.keymap.set("n", "<leader>fr", fzf.oldfiles, { desc = "FzfLua recent files" })
vim.keymap.set("n", "ld", fzf.lsp_definitions, { desc = "List definitions" })
vim.keymap.set("n", "gr", fzf.lsp_references, { desc = "Find all references" })
vim.keymap.set("n", "gi", fzf.lsp_implementations, { desc = "Go to implementation" })

-- harpoon
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end)
vim.keymap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<leader>1", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>2", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>3", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-s>", function()
	harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function()
	harpoon:list():prev()
end)
vim.keymap.set("n", "<C-S-N>", function()
	harpoon:list():next()
end)

vim.opt.laststatus = 3
