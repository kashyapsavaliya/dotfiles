return {
  -- Data-only: provides lsp/<server>.lua configs that vim.lsp.enable() picks
  -- up. Servers themselves are installed via the Brewfile.
  src = "https://github.com/neovim/nvim-lspconfig",
  name = "nvim-lspconfig",
  setup = function()
    vim.lsp.enable({ "terraformls" })
  end,
}
