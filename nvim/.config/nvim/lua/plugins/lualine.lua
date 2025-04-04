return {
	"nvim-lualine/lualine.nvim",
	kdependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
			},
		})
	end,
}
