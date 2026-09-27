return {
  src = "https://github.com/saghen/blink.cmp",
  name = "blink.cmp",
  -- Pinned to a release tag so blink can download its prebuilt fuzzy matcher.
  version = vim.version.range("1.*"),
  setup = function()
    require("blink.cmp").setup({
      -- Open the docs panel next to the menu automatically (default: only on
      -- <C-space>).
      completion = { documentation = { auto_show = true, auto_show_delay_ms = 250 } },
    })
  end,
}
