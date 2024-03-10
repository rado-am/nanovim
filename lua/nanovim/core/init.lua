local M = {}

M.lazy_setup = function()
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
    })
  end
  vim.opt.rtp:prepend(lazypath)

  local plugins = {
    { import = "nanovim.plugins" },
  }

  local pathSeparator = package.config:sub(1, 1) -- Gets the OS-specific directory path separator
  local configPath = vim.fn.stdpath('config')
  local pluginsPath = configPath .. pathSeparator .. 'lua' .. pathSeparator .. 'plugins'
  local stat = vim.loop.fs_stat(pluginsPath)

  if stat and stat.type == "directory" then
    table.insert(plugins, { import = "plugins" })
  end

  require("lazy").setup(plugins)
end

return M
