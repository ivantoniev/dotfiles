-- pcall lualine
local status_ok, lualine = pcall(require, "lualine")
if not status_ok
  return
end
lualine.setup()
