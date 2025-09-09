return {
	"nvzone/typr",
	dependencies = "nvzone/volt",
	opts = {},
	state = {
		w = 50,
		h = 200,
	},
	keys = {
		{
			"<leader>tt",
			function()
				vim.cmd("Typr")
			end,
			desc = "Start Typing Test",
		},
		{
			"<leader>tD",
			function()
				vim.cmd("TyprStats")
			end,
			desc = "Typing Dashboard",
		},
	},
	cmd = { "Typr", "TyprStats" },
}
-- vim.schedule(function()
-- 	local typr = require("typr.state")
-- 	typr.w = 100
-- 	typr.h = 40
-- end)
