local map = require("nanovim.core.utils").map

-- General
map("n", "<C-s>", ":w<cr>", { desc = "Save file" })
map("n", "<C-a>", "ggVG", { desc = "Select all" })
map({"n", "i", "v"}, "<C-d>", "<cmd>KBinder duplicate_line<cr>", { desc = "Duplicate line" })
map("n", "<esc>", "<cmd>noh<cr>", { desc = "Clear highlights" })
map("x", "<C-c>", '"+y', { desc = "Copy selected text to system clipboard" })

-- Telescope
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Search everywhere" })
map("n", "<cs-f>", "<cmd>Telescope live_grep<cr>", { desc = "Find in files" })
map("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Find in current file" })

-- Neo-Tree
map("n", "<C-b>", "<cmd>Neotree toggle<cr>", { desc = "Toggle project file tree" })

