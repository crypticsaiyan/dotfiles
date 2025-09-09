return {
	"f-person/git-blame.nvim",
	event = "BufReadPre",
	config = function()
		local gitblame = require("gitblame")

		vim.g.gitblame_enabled = 1
		vim.g.gitblame_date_format = "%r"
		vim.g.gitblame_message_template = "  <author> • <date> • <summary>"
		vim.g.gitblame_highlight_group = "Comment"
		vim.g.gitblame_message_when_not_committed = " Oh please, commit this !"
		vim.g.gitblame_delay = 1000

		-- Keymaps
		vim.keymap.set("n", "<leader>go", function()
			gitblame.open_commit_url()
		end, { desc = "Open commit in browser" })
	end,
}
