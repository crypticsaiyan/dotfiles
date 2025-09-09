return {
	"folke/noice.nvim",
	event = "VeryLazy",
	enabled = true,
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	opts = {
		-- Disable everything except LSP
		messages = { enabled = false },
		cmdline = {
			enabled = false,
			view = "cmdline_popup", -- popup style for cmdline
			format = {
				cmdline = { icon = "" },
				search_down = { icon = " " },
				search_up = { icon = " " },
				filter = { icon = "$" },
				lua = { icon = "" },
				help = { icon = "?" },
			},
		},
		views = {
			cmdline_popup = {
				border = {
					style = "rounded",
					padding = { 0, 1 }, -- top/bottom, left/right padding
				},
				filter_option = {},
				position = {
					row = "50%",
					col = "50%",
				},
				size = {
					width = 60,
					height = "auto",
				},
				win_options = {
					winhighlight =
						-- Normal = "NormalFloat",
						-- FloatBorder = "FloatBorder",
						"NormalFloat:NormalFloat,FloatBorder:FloatBorder",
				},
			},
		},
		popupmenu = { enabled = false },

		-- Only enable LSP UIs
		lsp = {
			progress = { enabled = false }, -- no noisy progress popups
			hover = {
				enabled = true,
				border = { style = "rounded" },
				size = { max_width = 80, max_height = 30 },
			},
			signature = {
				enabled = true,
				auto_open = {
					enabled = true,
					trigger = true,
					luasnip = true,
					throttle = 50,
				},
				border = { style = "rounded" },
			},
			message = { enabled = false },
			documentation = {
				view = "hover",
				opts = { border = { style = "rounded" } },
			},
		},

		-- Disable all presets except borders for LSP docs
		presets = {
			bottom_search = false,
			command_palette = false,
			long_message_to_split = true,
			inc_rename = false,
			lsp_doc_border = true, -- adds border around hover/signature
		},
	},

	config = function(_, opts)
		require("noice").setup(opts)
		vim.cmd("hi NoiceCmdlinePopupBorderHelp     guibg=#181825 guifg=#cba6f7 gui=bold")
		vim.cmd("hi NoiceCmdlinePopupBorderCmdline  guibg=#181825 guifg=#cba6f7 gui=bold")
		vim.cmd("hi NoiceCmdlinePopupBorderFilter   guibg=#181825 guifg=#cba6f7 gui=bold")
		vim.cmd("hi NoiceCmdlinePopupBorderInput    guibg=#181825 guifg=#cba6f7 gui=bold")
		vim.cmd("hi NoiceCmdlinePopupBorderLua      guibg=#181825 guifg=#cba6f7 gui=bold")
		vim.cmd("hi NoiceCmdlinePopupBorderSearch   guibg=#181825 guifg=#cba6f7 gui=bold")
	end,
}
