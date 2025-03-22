return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua", stop_after_first = true },
				python = { "black" },
				rust = { "rustfmt" },
				go = { "gofumpt", "golines", "goimports-reviser" },
				haskell = { "ormolu" },
				yaml = { "yamlfmt" },
				gleam = { "gleam" },
				sql = { "sqlfmt" },
				asm = { "asmfmt" },

				c = { "clang_format" },
				cpp = { "clang_format" },

				css = { "prettier", stop_after_first = true },
				markdown = { "prettier" },
				templ = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				javascriptreact = { "prettier", stop_after_first = true },
				javascript = { "prettier", stop_after_first = true },
				typescript = { "prettier", stop_after_first = true },
				typescriptreact = { "prettier", stop_after_first = true },
			},
			formatters = {
				stylua = { stop_after_first = true },
				prettier = { stop_after_first = true },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
