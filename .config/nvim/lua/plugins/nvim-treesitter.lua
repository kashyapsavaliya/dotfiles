return {
  src = "https://github.com/nvim-treesitter/nvim-treesitter",
  name = "nvim-treesitter",
  setup = function()
    require('nvim-treesitter').install({ 'terraform', 'hcl', 'go' })

    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'terraform', 'hcl', 'go' },
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
