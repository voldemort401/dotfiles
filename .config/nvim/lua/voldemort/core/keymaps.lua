vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap 

map("n", "<leader>e", "<cmd>NvimTreeOpen<CR>", {desc = "open file manager "})
map("n", "<leader>ff", "<cmd>Telescope oldfiles<CR>", {desc = "Old files using Telescope"})
map("i", "<C-c>", "<ESC>", {desc = "exit inser mode"})

-- tabs
map("n", "<leader>n", "<cmd>tabNext<CR>", {desc="Switch to next tab"})
map("n", "<leader>h", "<cmd>tabprevious<CR>", {desc="Switch to the previous tab"})
map("n", "<leader>j", "<cmd>tabnew<CR>",{desc="create a new tab"})
map("n", "<leader>c", "<cmd>tabclose<CR>", {desc="close tab"})
-- quit
map("n","qqq", "<cmd>:q<CR>", {desc="quit"})
