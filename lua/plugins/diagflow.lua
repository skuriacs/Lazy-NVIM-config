-- Show diagnostics on the top right of window
return {
	"dgagn/diagflow.nvim",
	event = "LspAttach",
	opts = {
		scope = "line",
	},
}
