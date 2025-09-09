-- todo : will delete this
return {
	"ThePrimeagen/git-worktree.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		require("git-worktree").setup({
			change_directory_command = "cd", -- string
			update_on_change = true, -- boolean
			update_on_change_command = "e .", -- string
			clearjumps_on_change = true, -- boolean
			autopush = false, -- boolean
		})
		local worktree = require("git-worktree")
		local telescope = require("telescope")

		worktree.setup({})
		telescope.load_extension("git_worktree")

		-- Keymaps
		vim.keymap.set(
			"n",
			"<leader>gw",
			telescope.extensions.git_worktree.git_worktrees,
			{ desc = "Switch git worktree" }
		)
		vim.keymap.set(
			"n",
			"<leader>gc",
			telescope.extensions.git_worktree.create_git_worktree,
			{ desc = "Create new git worktree" }
		)
	end,
}
