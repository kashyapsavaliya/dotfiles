local lualine = require('plugins.lualine')
local colorscheme = require('plugins.colorscheme')
local nvimtree = require('plugins.nvim-tree')
local whichkey = require('plugins.which-key')

local plugins = { 
  "https://github.com/nvim-tree/nvim-web-devicons", -- Add this for lualine
  colorscheme, 
  lualine,
  nvimtree,
  whichkey,
}

vim.pack.add(plugins)

for _, plugin in ipairs(plugins) do
  if type(plugin.setup) == 'function' then
    plugin.setup()
  end
end
