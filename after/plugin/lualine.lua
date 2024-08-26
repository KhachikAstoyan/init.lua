-- local git_blame = require("gitblame")
-- This disables showing of the blame text next to the cursor
-- vim.g.gitblame_display_virtual_text = 0

require("lualine").setup({
	options = {
		theme = "auto",
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = {
			{
				"filename",
				path = 1,
			},
			-- { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available },
		},
		lualine_x = { "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
})

vim.o.laststatus = 3
