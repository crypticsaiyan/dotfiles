return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				-- Javascript/TypeScript
				"typescript-language-server",
				"prettierd",
				-- Python
				"pyright",
				"black",
				"ruff",
				-- Golang
				"gopls",
				"goimports",
				"golines",
			},
		},
	},
}
