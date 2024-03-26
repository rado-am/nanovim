local M = {}

local get_selected_text = function()
	vim.cmd('noau normal! "vy"')
	local text = vim.fn.getreg('v')
	vim.fn.setreg('v', {})

	text = string.gsub(text, "\n", "")
	if #text > 0 then
		return text
	else
		return ''
	end
end

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
  elseif mode == "v" then
    local selected_text = get_selected_text()
    
    -- Add selected text to register
    vim.fn.setreg('a', selected_text)
    
    -- Get the current buffer
    local current_buffer = vim.api.nvim_get_current_buf()

    -- Get the current line number
    local current_line_number = vim.api.nvim_win_get_cursor(0)[1]

    -- Insert a new line after the current line
    vim.api.nvim_buf_set_lines(current_buffer, current_line_number, current_line_number, false, {""})

    -- Move the cursor to the newly inserted line
    vim.api.nvim_win_set_cursor(0, {current_line_number + 1, 0})
    
    -- Paste selected text
    vim.cmd("normal! \"ap")
    
    -- Clear register
    vim.fn.setreg('a', {})
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
