return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = function()
		local function lsp_progress()
			local messages = vim.lsp.util.get_progress_messages()
			if #messages == 0 then
				return ""
			end
			local status = {}
			for _, msg in pairs(messages) do
				table.insert(status, (msg.percentage or 0) .. "%% " .. (msg.title or ""))
			end
			local spinners = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
			local ms = vim.loop.hrtime() / 1000000
			local frame = math.floor(ms / 120) % #spinners
			local return_val = table.concat(status, " | ") .. " " .. spinners[frame + 1]
			return return_val
		end
		return {
			sections = { lualine_c = { lsp_progress }, lualine_x = { "buffers" } },
		}
	end,
}
