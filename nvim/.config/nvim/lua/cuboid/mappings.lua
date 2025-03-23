-- neotree mappings
vim.api.nvim_set_keymap("n", "<leader>n", ":Neotree toggle float<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle left<CR>", { noremap = true, silent = true })

-- telescope mappings
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
