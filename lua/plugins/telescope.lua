return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    local actions = require("telescope.actions")	

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = actions.close
          }
        },
        file_ignore_patterns = { "node_modules" },
      }    
    })

    vim.keymap.set("n", "<cs-f>", builtin.live_grep, {})
    vim.keymap.set("n", "<C-p>", builtin.find_files, {})

    telescope.load_extension("fzf")
  end
}
