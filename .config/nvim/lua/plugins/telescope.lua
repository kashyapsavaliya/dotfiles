return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup {}

    -- Minimal <leader>ff mapping for default file finder
    vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { noremap = true, silent = true })
  end,
}

