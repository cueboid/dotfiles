return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	config = function()
		vim.keymap.set("n", "<space>ff", require("telescope.builtin").find_files)
		vim.keymap.set("n", "<space>fm", require("telescope.builtin").man_pages)
		vim.keymap.set("n", "<space>fo", require("telescope.builtin").vim_options)
		vim.keymap.set("n", "<space>fc", function()
			require("telescope.builtin").find_files({
				cwd = vim.fn.stdpath("config"),
			})
		end)
	end,
}
