local function map(m, k, v, opts)
  local options = vim.tbl_extend("force", { noremap = true, silent = true }, opts or {})
  vim.keymap.set(m, k, v, options)
end

map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

map("n", "<leader>t", ":NvimTreeToggle<CR>", { desc = "Toggle nvim-tree" })
map("n", "<leader>w", ":w<CR>", { desc = "Save file" })
map("n", "<leader>R", ":so %<CR>", { desc = "Reload config" })
