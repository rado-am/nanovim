return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    local os_name = vim.loop.os_uname().sysname

    telescope.setup({})

    if os_name == "Darwin" then
      vim.keymap.set("n", "<M-p>", builtin.find_files, { noremap = true })
    else
      vim.keymap.set("n", "<C-p>", builtin.find_files, { noremap = true })
    end
end
}
