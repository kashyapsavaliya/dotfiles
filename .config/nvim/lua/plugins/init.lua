local lualine = require('plugins.lualine')
local colorscheme = require('plugins.colorscheme')
local nvimtree = require('plugins.nvim-tree')
local whichkey = require('plugins.which-key')
local rendermd = require('plugins.render-markdown')

local plugins = { 
  "https://github.com/nvim-tree/nvim-web-devicons", -- Add this for lualine
  "https://github.com/nvim-treesitter/nvim-treesitter",
  colorscheme, 
  lualine,
  nvimtree,
  whichkey,
  rendermd,
}

vim.pack.add(plugins)

for _, plugin in ipairs(plugins) do
  if type(plugin.setup) == 'function' then
    plugin.setup()
  end
end
