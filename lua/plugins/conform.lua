return {
	"stevearc/conform.nvim",
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				-- https://github.com/mvdan/gofumpt
				-- https://pkg.go.dev/golang.org/x/tools/cmd/goimports (auto imports)
				-- https://github.com/incu6us/goimports-reviser
				go = { "gofumpt", "goimports", "goimports-reviser" },
				-- https://github.com/threedaymonk/htmlbeautifier
				html = { "htmlbeautifier" },
				-- https://github.com/mantoni/eslint_d.js/
				javascript = { "eslint_d" },
				-- https://github.com/stedolan/jq
				jq = { "jq" },
				-- https://github.com/rhysd/fixjson
				json = { "fixjson" },
				-- https://github.com/executablebooks/mdformat
				markdown = { "mdformat" },
				-- https://github.com/rust-lang/rustfmt
				python = { "black" },
				rust = { "rustfmt" },
				-- https://github.com/koalaman/shellcheck
			},
			format_on_save = { async = true, timeout_ms = 5000, lsp_fallback = true },
		})
	end,
}
