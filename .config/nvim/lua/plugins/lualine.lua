return {
  -- 1. Specify the source URL
  src = "https://github.com/nvim-lualine/lualine.nvim",
  name = "lualine",
  
  -- 2. Dependencies are handled in the main list, but we can note them here
  -- In 0.12, these must be explicitly added to the vim.pack.add call
  
  -- 3. Rename 'config' to 'setup'
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
