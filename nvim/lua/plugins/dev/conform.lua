return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		opts = {
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				json = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				markdown = { "prettier" },
				go = { "gofumpt", "goimports" },
				lua = { "stylua" },
				yaml = { "prettier" }, -- Or "yamlfmt" / "yamllint" if installed
				qml = { "qmlformat" },
			},
		},
	},
}
