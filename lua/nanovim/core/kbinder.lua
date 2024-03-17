local M = {}

local duplicate_line = function()
  local mode = vim.api.nvim_get_mode().mode

  if mode == "n" then
    vim.cmd("t.")
  elseif mode == "i" then
    -- Exit insert mode
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), 'n', false)
    -- Duplicate line
    vim.cmd("t.")
    -- Enter insert mode again
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("i", true, false, true), 'n', false)
  end
end

M.setup = function()
  vim.api.nvim_create_user_command("KBinder", function(opts)
    local args = opts.args

    if args == "duplicate_line" then
      duplicate_line()
    else
      vim.api.nvim_err_writeln("KBinder error: Unknow command " .. args)
    end
  end, { nargs = 1 })
end

return M
