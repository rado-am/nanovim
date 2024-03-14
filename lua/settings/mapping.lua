local map = require("nanovim.core.utils").map

map("n", "<C-s>", ":w<cr>", { desc = "Save file" })

map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Search everywhere" })
map("n", "<cs-f>", "<cmd>Telescope live_grep<cr>", { desc = "Find in files" })
