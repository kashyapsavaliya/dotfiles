return {
  src = "https://github.com/nvim-tree/nvim-tree.lua",
  name = "nvim-tree",
  setup = function()
    require("nvim-tree").setup({
      renderer = {
        icons = {
          show = {
            file = false,
            folder = false,
            folder_arrow = true,
            git = true,
          },
        },
      },
      view = {
        width = 35,
        side = "left",
      },
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_cwd = true,
      update_focused_file = {
        enable = true,
        update_cwd = true,
        update_root = true,
      },
    })

    vim.g.nvim_tree_respect_buf_cwd = 1
  end,
}
