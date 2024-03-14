local M = {}

M.map = function(mode, key, command, opts)
  local set = vim.keymap.set
  local options = { noremap = true, silent = true }

  if opts then
    options = vim.tbl_extend("force", options, opts)
  end

  set(mode, key, command, opts)
end

return M
