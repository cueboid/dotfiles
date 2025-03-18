return {
	"nvim-lualine/lualine.nvim",
	kdependencies = { "nvim-tree/nvim-web-devicons" },
}
--[[
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = false,
        theme = "auto",
        component_separators = "",
        section_separators = "",
      },
    })
  end,
}
]]
