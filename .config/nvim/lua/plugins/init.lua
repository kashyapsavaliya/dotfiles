local lualine = require('plugins.lualine')
local colorscheme = require('plugins.colorscheme')
local nvimtree = require('plugins.nvim-tree')
local whichkey = require('plugins.which-key')
local ts = require('plugins.nvim-treesitter')
local lsp = require('plugins.lsp')
local blink = require('plugins.blink')

local plugins = {
  "https://github.com/nvim-tree/nvim-web-devicons", -- Add this for lualine
  -- Runs setup() itself from its plugin/ file; only needs an explicit call for
  -- custom options, per its README.
  { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim", name = "render-markdown" },
  colorscheme,
  lualine,
  nvimtree,
  whichkey,
  ts,
  lsp,
  blink,
}

vim.pack.add(plugins)

for _, plugin in ipairs(plugins) do
  if type(plugin.setup) == 'function' then
    plugin.setup()
  end
end
