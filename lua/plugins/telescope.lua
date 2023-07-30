-- Fuzzyfind files / words in files
return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.2",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files with telescope" },
		{ "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Search within files with telescope" },
		{ "<leader>fr", "<cmd>Telescope lsp_references<cr>", desc = "Find references" },
		{
			"<leader>fW",
			"<cmd>Telescope live_grep find_command=rg,--hidden<cr>",
			desc = "Search within files + hidden with telescope",
		},
	},
}
