vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Show diagnostic popup" })
