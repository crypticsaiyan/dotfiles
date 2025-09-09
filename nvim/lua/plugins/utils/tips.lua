return {
	"saxon1964/neovim-tips",
	enabled = false,
	version = "*", -- Only update on tagged releases
	dependencies = {
		"ibhagwan/fzf-lua",
		"MeanderingProgrammer/render-markdown.nvim",
	},
	opts = {
		user_file = vim.fn.stdpath("config") .. "/neovim_tips/user_tips.md",
		user_tip_prefix = "[User] ",
		warn_on_conflicts = true,
	},
	init = function()
		local map = vim.keymap.set
		map("n", "<leader>nto", ":NeovimTips<CR>", { desc = "Neovim tips", noremap = true, silent = true })
		map(
			"n",
			"<leader>nte",
			":NeovimTipsEdit<CR>",
			{ desc = "Edit your Neovim tips", noremap = true, silent = true }
		)
		map("n", "<leader>nta", ":NeovimTipsAdd<CR>", { desc = "Add your Neovim tip", noremap = true, silent = true })
		map(
			"n",
			"<leader>nth",
			":NeovimTipsHelp<CR>",
			{ desc = "Neovim tips user guide", noremap = true, silent = true }
		)
	end,
}
