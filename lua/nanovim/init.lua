local M = {}

M.setup = function()
  require("nanovim.core").lazy_setup()
  require("nanovim.core.kbinder").setup()
  require("settings.mapping")
  require("settings.options")
end

return M
