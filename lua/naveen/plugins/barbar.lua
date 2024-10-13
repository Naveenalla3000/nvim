return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	config = function()
		require("barbar").setup({
			-- add your custom options here, anything missing will use the default
			-- example options:
			-- animation = true,
			-- insert_at_start = true,
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>bp", "<cmd>BufferPrevious<CR>", { desc = "Previous buffer" })
		keymap.set("n", "<leader>bn", "<cmd>BufferNext<CR>", { desc = "Next buffer" })
		keymap.set("n", "<leader>bd", "<cmd>BufferClose<CR>", { desc = "Close buffer" })
	end,
}
