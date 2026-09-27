return {
  src = "https://github.com/nvim-lualine/lualine.nvim",
  name = "lualine",
  -- vim.pack has no dependency field; nvim-web-devicons is added separately in
  -- plugins/init.lua.
  setup = function()
    local section_b = {
      { "branch", icon = " " },
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
        globalstatus = true,
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
