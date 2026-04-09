local lualine = require('plugins.lualine')
local colorscheme = require('plugins.colorscheme')
local nvimtree = require('plugins.nvim-tree')

local plugins = { 
  "https://github.com/nvim-tree/nvim-web-devicons", -- Add this for lualine
  colorscheme, 
  lualine,
  nvimtree,
}

vim.pack.add(plugins)

for _, plugin in ipairs(plugins) do
  if type(plugin.setup) == 'function' then
    plugin.setup()
  end
end
