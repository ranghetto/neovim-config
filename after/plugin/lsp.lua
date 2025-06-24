vim.lsp.enable('clangd')

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, {buffer = args.buf})
        vim.keymap.set("n", "gf", function() vim.diagnostic.open_float() end, {buffer = args.buf})
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, {buffer = args.buf})
        vim.keymap.set("n", "<leader>f", function()
            vim.lsp.buf.format({ async = true })
        end, {buffer = args.buf})
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, {buffer = args.buf})
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, {buffer = args.buf})
        vim.keymap.set("i", "<C-Space>", "<C-X><C-O>", { noremap = true, expr = false })
    end,
})
