return {
  src = "https://github.com/catppuccin/nvim",
  name = "catppuccin",
  setup = function()
    require("catppuccin").setup({
      flavour = "mocha",
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
    })

    -- Catppuccin's setup() must run before the colorscheme is loaded.
    vim.cmd.colorscheme("catppuccin")
  end,
}
