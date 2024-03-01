-- Filebrowser extension for telescope
return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
	keys = {
		{
			"<leader>fb",
			"<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr> ",
			desc = "Open up filebrowse telescope extension",
		},
	},
}
