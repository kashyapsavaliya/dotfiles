local lualine = require('plugins.lualine')
local colorscheme = require('plugins.colorscheme')
local telescope = require('plugins.telescope') 

local plugins = { lualine, colorscheme, telescope }

vim.pack.add(plugins)

for _, plugin in ipairs(plugins) do
  if type(plugin.setup) == 'function' then
    plugin.setup()
  end
end
