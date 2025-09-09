-- return {
-- 	"NStefan002/screenkey.nvim",
-- 	lazy = false,
-- 	version = "*",
-- 	enabled = true,
-- 	keys = {
-- 		{
-- 			"<leader>SS",
-- 			function()
-- 				vim.cmd("Screenkey")
-- 			end,
-- 			desc = "Toggle Screenkey",
-- 		},
-- 	},
-- 	config = function()
-- 		require("screenkey").setup({
-- 			win_opts = {
-- 				row = vim.o.lines - vim.o.cmdheight - 1,
-- 				col = vim.o.columns - 1,
-- 				relative = "editor",
-- 				anchor = "SE",
-- 				width = 30,
-- 				height = 2,
-- 				border = "rounded",
-- 				title = "Screenkey",
-- 				title_pos = "center",
-- 				style = "minimal",
-- 				focusable = false,
-- 				noautocmd = true,
-- 			},
-- 			compress_after = 3,
-- 			clear_after = 3,
-- 			disable = {
-- 				filetypes = {},
-- 				buftypes = {},
-- 			},
-- 			show_leader = true,
-- 			group_mappings = false,
-- 			display_infront = {},
-- 			display_behind = {},
-- 			filter = function(keys)
-- 				return keys
-- 			end,
-- 			keys = {
-- 				["<TAB>"] = "󰌒",
-- 				["<CR>"] = "󰌑",
-- 				["<ESC>"] = "Esc",
-- 				["<SPACE>"] = "␣",
-- 				["<BS>"] = "󰌥",
-- 				["<DEL>"] = "Del",
-- 				["<LEFT>"] = "",
-- 				["<RIGHT>"] = "",
-- 				["<UP>"] = "",
-- 				["<DOWN>"] = "",
-- 				["<HOME>"] = "Home",
-- 				["<END>"] = "End",
-- 				["<PAGEUP>"] = "PgUp",
-- 				["<PAGEDOWN>"] = "PgDn",
-- 				["<INSERT>"] = "Ins",
-- 				["<F1>"] = "󱊫",
-- 				["<F2>"] = "󱊬",
-- 				["<F3>"] = "󱊭",
-- 				["<F4>"] = "󱊮",
-- 				["<F5>"] = "󱊯",
-- 				["<F6>"] = "󱊰",
-- 				["<F7>"] = "󱊱",
-- 				["<F8>"] = "󱊲",
-- 				["<F9>"] = "󱊳",
-- 				["<F10>"] = "󱊴",
-- 				["<F11>"] = "󱊵",
-- 				["<F12>"] = "󱊶",
-- 				["CTRL"] = "Ctrl",
-- 				["ALT"] = "Alt",
-- 				["SUPER"] = "󰘳",
-- 				["<leader>"] = "<leader>",
-- 			},
-- 		})
-- 	end,
-- }
return {
	{
		"nvzone/showkeys",
		cmd = "ShowkeysToggle",
		keys = {
			{
				"<leader>SS",
				function()
					vim.cmd("ShowkeysToggle")
				end,
				desc = "Toggle showkeys",
			},
		},
		opts = {
			position = "bottom-right",
			maxkeys = 5,
			show_count = true,
			winopts = {
				focusable = true,
				relative = "editor",
				style = "minimal",
				border = "rounded",
				height = 1,
				row = 1,
				col = 1,
			},
		},
	},
}
