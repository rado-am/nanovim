return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local neo_tree = require("neo-tree")
		local sources_manager = require("neo-tree.sources.manager")

		local keymap = vim.keymap

		neo_tree.setup({
			filesystem = {
				filtered_items = {
					hide_gitignored = false,
					hide_dotfiles = false,
					hide_by_name = {
						".git",
					},
				},
				follow_current_file = {
					enabled = true,
				},
			},
			source_selector = {
				winbar = true,
				statusline = true,
			},
		})

		-- Show and focus neo-tree after start
		sources_manager.focus("filesystem")
	end,
}
