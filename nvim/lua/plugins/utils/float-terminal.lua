return {
	"voldikss/vim-floaterm",
	enabled = true,
	config = function()
		vim.g.floaterm_width = 0.8
		vim.g.floaterm_height = 0.8

		vim.keymap.set("n", "<C-\\>", "<Cmd>FloatermToggle <CR>", { noremap = true, silent = true })
		vim.keymap.set("t", "<C-\\>", "<Cmd>FloatermToggle <CR>", { noremap = true, silent = true })

		vim.keymap.set("n", "<leader>Td", "<Cmd>FloatermNew todotui<CR>", { noremap = true, silent = true })

		vim.keymap.set({ "n", "t" }, "<leader>Tn", "<Cmd>FloatermNext<CR>", { noremap = true, silent = true })
		vim.keymap.set({ "n", "t" }, "<leader>Tp", "<Cmd>FloatermPrev<CR>", { noremap = true, silent = true })
		vim.keymap.set({ "n", "t" }, "<leader>Tf", "<Cmd>FloatermFirst<CR>", { noremap = true, silent = true })
		vim.keymap.set({ "n", "t" }, "<leader>Tl", "<Cmd>FloatermLast<CR>", { noremap = true, silent = true })
		-- Optional: Auto-close all floaterms on exit
		vim.cmd([[
      augroup FloatermEnd
        autocmd!
        autocmd QuitPre * FloatermKill!
      augroup END
    ]])
	end,
}
