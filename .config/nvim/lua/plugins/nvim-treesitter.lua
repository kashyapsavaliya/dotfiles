-- The README requires parsers be updated whenever the plugin is, since its
-- queries are version-matched to specific parser revisions (its lazy.nvim
-- example uses `build = ':TSUpdate'`). vim.pack has no build field; PackChanged
-- is the equivalent, and per :h vim.pack it must be registered before the
-- vim.pack.add() call -- plugins/init.lua requires this module first, so
-- module-level here lands in the right window.
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == 'nvim-treesitter' and kind == 'update' then
      if not ev.data.active then
        vim.cmd.packadd('nvim-treesitter')
      end
      vim.cmd('TSUpdate')
    end
  end,
})

return {
  src = "https://github.com/nvim-treesitter/nvim-treesitter",
  name = "nvim-treesitter",
  -- Pin explicitly: 'master' is the locked legacy pre-rewrite branch and is
  -- API-incompatible with the config below.
  version = "main",
  setup = function()
    -- Parsers to keep installed. Runs asynchronously and is a no-op for
    -- parsers that are already present.
    require('nvim-treesitter').install({
      'bash',
      'diff',
      'gitcommit',
      'go',
      'gomod',
      'gosum',
      'gowork',
      'hcl',
      'json',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'query',
      'terraform',
      'toml',
      'vim',
      'vimdoc',
      'yaml',
      'zsh',
    })

    -- Highlighting is not enabled automatically; per the README it needs a
    -- FileType autocmd calling vim.treesitter.start(). Matching '*' starts it
    -- for any filetype with an available parser; vim.treesitter.start() errors
    -- when there is none, which the pcall swallows.
    vim.api.nvim_create_autocmd('FileType', {
      pattern = '*',
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
