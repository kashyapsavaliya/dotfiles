require 'core.options'
require 'core.keymaps'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
{
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    -- fill any relevant options here
  },
},
{
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local bg0 = "#1b1b1b"

    require("gruvbox").setup({
      contrast = "hard",
      overrides = {
        GruvboxBg0 = { fg = bg0 },
        SignColumn = { bg = bg0 },
        GruvboxRedSign = { bg = bg0 },
        GruvboxYellowSign = { bg = bg0 },
        GruvboxGreenSign = { bg = bg0 },
        GruvboxAquaSign = { bg = bg0 },
        GruvboxOrangeSign = { bg = bg0 },
        GruvboxPurpleSign = { bg = bg0 },
        GruvboxBlueSign = { bg = bg0 },
        Normal = { bg = bg0 },
      },
    })

    vim.cmd("colorscheme gruvbox")

  end,
}
})
