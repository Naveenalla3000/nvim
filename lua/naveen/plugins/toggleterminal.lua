return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			size = 14,
			open_mapping = [[<c-\>]],
			hide_numbers = true,
			shade_filetypes = {},
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
			persist_size = true,
			direction = "horizontal",
			close_on_exit = true,
			shell = vim.o.shell,
			on_open = function(term)
				vim.cmd("startinsert!")
				vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
			end,
			on_close = function(term)
				vim.notify("Closing terminal", vim.log.levels.INFO)
			end,
		})

		-- Create a key mapping for <leader>tt to open the terminal
		vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
	end,
}
