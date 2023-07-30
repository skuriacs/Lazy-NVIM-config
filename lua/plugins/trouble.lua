-- Creates a Diagnostics window to see warnings/errors
return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "<leader>dd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Doucment Diagnostics" },
		{ "<leader>dw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
	},
}
