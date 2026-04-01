return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local section_b = {
      "branch",
      "diff",
      {
        "diagnostics",
        sources = { "nvim_workspace_diagnostic" },
      },
    }

    local section_c = {
      "%=",
      {
        "filename",
        file_status = false,
        path = 1,
      },
    }

    require("lualine").setup({
      options = {
        theme = "auto",
        component_separators = "",
        section_separators = "",
      },
      sections = {
        lualine_b = section_b,
        lualine_c = section_c,
      },
      inactive_sections = {
        lualine_c = section_c,
        lualine_x = { "location" },
      },
    })
  end,
}
