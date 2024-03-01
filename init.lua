-- Instal lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
-- Normal vim settings config
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamed"
vim.opt.colorcolumn = "100"
vim.opt.smartcase = true
vim.opt.ignorecase = true

-- Keymappings
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "p", "pzz")
vim.keymap.set("n", "P", "Pzz")
vim.keymap.set("n", "<leader><leader>", "<C-6>")
vim.keymap.set("n", "<leader>h", "<cmd>lua vim.lsp.buf.hover()<cr>")
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")
vim.keymap.set("n", "<leader>cr", "<cmd>lua vim.lsp.buf.rename()<cr>")
vim.keymap.set("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<cr>")

-- Load up settings from plugins folder
require("lazy").setup("plugins")
require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers({
	function(server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup({})
	end,
})
require("lspconfig").gopls.setup({
	settings = {
		gopls = {
			gofumpt = true,
		},
	},
})
require("mini.pairs").setup()
-- Utilities for creating configurations
require("nvim-treesitter.install").compilers = { "clang" }
require("nvim-treesitter.configs").setup({
	auto_install = true,
	highlight = {
		enable = true,
	},
})
require("telescope").load_extension("file_browser")
vim.cmd("colorscheme kanagawa-wave")
