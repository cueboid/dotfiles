vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- make yanking copy to system clipboard
vim.opt.clipboard = "unnamedplus"

vim.loader.enable()

require("cuboid")
