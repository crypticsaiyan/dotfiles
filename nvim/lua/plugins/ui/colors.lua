return {
	"uga-rosa/ccc.nvim",
	enabled = true,
	config = function()
		require("ccc").setup({
			-- Your preferred settings
			-- Example: enable highlighter
			highlighter = {
				auto_enable = true,
				lsp = true,
			},
		})
	end,
}
