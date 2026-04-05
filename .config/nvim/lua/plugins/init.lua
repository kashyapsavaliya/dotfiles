local lualine = require('plugins.lualine')
local colorscheme = require('plugins.colorscheme')

local plugins = { lualine, colorscheme }

vim.pack.add(plugins)

for _, plugin in ipairs(plugins) do
  if type(plugin.setup) == 'function' then
    plugin.setup()
  end
end
