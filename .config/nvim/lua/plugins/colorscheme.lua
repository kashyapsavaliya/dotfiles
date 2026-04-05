return {
  -- Use 'src' for the URL
  src = "https://github.com/catppuccin/nvim",
  name = "catppuccin",
  
  -- Use 'setup' instead of 'config'
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
    
    -- This must be inside the setup function
    vim.cmd.colorscheme("catppuccin")
  end,
}
