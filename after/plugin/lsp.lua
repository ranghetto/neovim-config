local function on_attach(_, bufnr)
  vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
end

vim.lsp.config['luals'] = {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.git' },
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = { vim.env.VIMRUNTIME },
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
      runtime = {
        version = 'Lua 5.4',
        path = { '?.lua', '?/init.lua' }
      }
    }
  },
  on_attach = on_attach,
}


vim.lsp.config["tinymist"] = {
  cmd = { "tinymist" },
  filetypes = { "typst" },
  settings = {
    exportPdf = "never",
    lint = { enable = true, when = "onType" }
  },
}

vim.lsp.enable('luals')
vim.lsp.enable('tinymist')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, { buffer = args.buf })
    vim.keymap.set("n", "gf", function() vim.diagnostic.open_float() end, { buffer = args.buf })
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { buffer = args.buf })
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, { buffer = args.buf })
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, { buffer = args.buf })
    vim.keymap.set("i", "<C-Space>", "<C-x><C-o>")

    vim.keymap.set("n", "<leader>s", function() vim.lsp.buf.code_action() end, { buffer = args.buf })

    vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end, { buffer = args.buf })
  end,
})

