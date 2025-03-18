local options = {
	autoindent = true,
	smartindent = true,
	tabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	showtabline = 0,
	scrolloff = 10,

	number = true,
	relativenumber = true,
	numberwidth = 4,
	incsearch = true,
	hlsearch = true,
	ignorecase = true,
	smartcase = true,

	splitbelow = true,
	splitright = true,

	termguicolors = true,
	hidden = true,
	signcolumn = "yes",
	showmode = false,
	errorbells = false,
	wrap = false,
	cursorline = true,
	fileencoding = "utf-8",
}

vim.opt.shortmess:append("IsF")

for option, value in pairs(options) do
	vim.opt[option] = value
end
