return {
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
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg0, fg = "#ebdbb2" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = bg0, fg = "#ebdbb2" })
  end,
}

