vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Show diagnostic popup" })
vim.keymap.set('n', '<C-b>', function()
  vim.cmd.normal { args = {'<C-o>'}, bang = true }
end, { noremap = true, silent = true })
