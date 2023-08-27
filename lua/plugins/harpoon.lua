return {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Harpoon add file" },
		{ "<leader>hq", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Harpoon UI" },
		{ "<leader>h1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Harpoon GOTO file 1" },
		{ "<leader>h2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Harpoon GOTO file 2" },
		{ "<leader>h3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Harpoon GOTO file 3" },
		{ "<leader>n", "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Harpoon Next" },
		{ "<leader>p", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Harpoon Prev" },
	},
}
