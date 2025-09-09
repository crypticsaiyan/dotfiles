vim.api.nvim_create_autocmd("FileType", {
	pattern = { "json", "jsonc", "markdown", "text" },
	callback = function()
		vim.wo.conceallevel = 2
	end,
})

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

local function toggleTrueFalse()
	local word = vim.fn.expand("<cword>")
	if word == "true" then
		vim.cmd("normal! ciwfalse")
	elseif word == "false" then
		vim.cmd("normal! ciwtrue")
	end
end

vim.keymap.set("n", "<leader>tf", toggleTrueFalse, { desc = "Toggle True False" }, { noremap = true, silent = true })

vim.cmd("autocmd FileType * setlocal formatoptions-=cro")

vim.wo.number = true
vim.wo.relativenumber = true

local opt = vim.opt
-- UI & Display
opt.termguicolors = true
opt.cursorline = true
opt.scroll = 5
opt.signcolumn = "yes"
opt.wrap = true
opt.scrolloff = 8
opt.autoindent = true
opt.sidescrolloff = 8
opt.winborder = "none"

-- Searching
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- Indentation
opt.smartindent = true

-- Performance
opt.updatetime = 250
opt.swapfile = false
opt.undofile = true
opt.timeoutlen = 400

-- Clipboard
opt.clipboard = "unnamedplus"

-- Splits
opt.splitright = true
opt.splitbelow = true
