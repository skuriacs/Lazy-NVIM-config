return {
	"ggandor/leap.nvim",
	opts = function()
		require("leap").add_default_mappings()
		return {}
	end,
}
