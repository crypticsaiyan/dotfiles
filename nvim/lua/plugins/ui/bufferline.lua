return {
	"akinsho/bufferline.nvim",
	enabled = false,
	opts = {
		options = {
			offsets = {
				{
					filetype = "snacks_layout_box",
					highlight = "catppuccin",
					text = " File Explorer",
					text_align = "left",
					separator = true,
				},
			},
			mode = "buffers",
			-- separator_style = "slant",
			diagnostics = "nvim_lsp",
			diagnostics_update_on_event = true,
			hover = {
				enabled = true,
				delay = 200,
				reveal = { "close" },
			},
		},
		highlights = {
			buffer_selected = {
				fg = "#b4befe", -- lavender
				bold = false,
				italic = true,
			},
			tab_selected = {
				fg = "#b4befe", -- lavender
				bold = true,
			},
		},
	},
}
