return {
	"kylechui/nvim-surround",
	version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
	enabled = false,
	event = "VeryLazy",
	config = function()
		require("nvim-surround").setup({
			keymaps = {
				normal = "gzs", -- instead of ysiw, you'd do gzsiw
				normal_cur = "gzs", -- alternative for yss
				normal_line = "gzS", -- alternative for ySS
				normal_cur_line = "gzS", -- alternative for yss line
				visual = "gzs", -- instead of vS
				delete = "gzd", -- instead of ds
				change = "gzc", -- instead of cs
			},
		})
	end,
}
