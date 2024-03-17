vim.opt.termguicolors = true -- Set real colors
vim.opt.nu = true -- Set line numbers
vim.opt.relativenumber = true -- Set relative number
vim.opt.cursorline = true -- Set cursor line to number (dont highlight all line)
vim.opt.hlsearch = true -- Set highlight search
vim.opt.incsearch = true -- Set incremental search
vim.opt.fillchars = { eob = " " } -- Delete "~" symbol
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

require("nanovim.core").lazy_setup()
require("nanovim.core.kbinder").setup()
require("settings.mapping")
