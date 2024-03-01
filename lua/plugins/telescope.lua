-- Fuzzyfind files / words in files
local utils = require("telescope.utils")
local builtin = require("telescope.builtin")
_G.project_files = function()
	local _, ret, _ = utils.get_os_command_output({ 'git', 'rev-parse', '--is-inside-work-tree' })
	if ret == 0 then
		builtin.git_files()
	else
		builtin.find_files()
	end
end
return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.2",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>ff",        "<cmd>lua project_files()<cr>",      desc = "Find files with telescope" },
		{ "<leader>fF",        "<cmd>Telescope find_files<cr>",     desc = "Find files with telescope" },
		{ "<leader>fw",        "<cmd>Telescope live_grep<cr>",      desc = "Search within files with telescope" },
		{ "<leader>fr",        "<cmd>Telescope lsp_references<cr>", desc = "Find references" },
		{ "<leader>fp",        "<cmd>Telescope pickers<cr>",        desc = "Show pickers" },
		{ "<leader>fl",        "<cmd>Telescope resume<cr>",         desc = "Show last serach" },
		{ "<leader>f<leader>", "<cmd>Telescope buffers<cr>",        desc = "Show open buffers" },
		{
			"<leader>fW",
			"<cmd>Telescope live_grep find_command=rg,--hidden<cr>",
			desc = "Search within files + hidden with telescope",
		},
	},
	opts = function()
		return {
			defaults = {
				path_display = { "truncate" },
			},
		}
	end,
}
