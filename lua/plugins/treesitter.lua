return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      auto_install = false,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      ensure_installed = {
	"bash",
	"css",
	"dockerfile",
	"gitignore",
	"graphql",
	"html",
	"http",
	"javascript",
	"json",
	"lua",
	"make",
	"markdown",
	"markdown_inline",
	"prisma",
	"regex",
	"scss",
	"sql",
	"styled",
	"tsx",
	"typescript",
	"vim",
	"vimdoc",
	"xml",
	"yaml",
      }
    })
  end
}
