return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "nvim-mini/mini.icons" },
	opts = {
		winopts = {
			preview = {
				layout = "vertical", -- "vertical" = side by side
				vertical = "right:50%", -- show on the right, taking 50% width
			},
		},
	},
}
