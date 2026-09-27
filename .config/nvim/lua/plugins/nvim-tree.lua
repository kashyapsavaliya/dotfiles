return {
  src = "https://github.com/nvim-tree/nvim-tree.lua",
  name = "nvim-tree",
  setup = function()
    -- Defaults everywhere except root/file syncing: keep the tree rooted at the
    -- cwd and highlight whatever file is focused, so the tree follows you
    -- instead of needing to be re-navigated.
    require("nvim-tree").setup({
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = { enable = true },
      },
    })
  end,
}
