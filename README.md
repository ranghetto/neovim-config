# neovim-config
My NeoVim personal configuration

## Plugins
- `packer`: plugins package manager
- `telescope`: quick search view
- `treesitter`: LSP highlight
- `harpoon`: quick switch between files
- `undoree`: ctrl-z with balls
- `fugitive`: git wrapper for neovim
- `lspconfig`: configurations for lsp servers

> Currently `nvim-tmux-navigation` is disabled, 'cause I don't use tmux so frequently anymore

## LSP languages
- `C`
- `Lua`

## Keybindings

> Map leader key is `<space>`

|**Field**|**Mode**|**Keys**|**Description**|
|---------|--------|--------|---------------|
|Basic|Normal|`<leader>pv`|Open native folder navigation|
|Basic|Normal|`<leader>e`|Open diagnostic float|
|Git|Normal|`<leader>gs`|Show git menu|
|Harpoon|Normal|`<leader>a`|Add current file to harpoon list|
|Harpoon|Normal|`<leader>d`|Remove current file to harpoon list|
|Harpoon|Normal|`<Ctrl>e`|Toggle quick harpoon list menu|
|Harpoon|Normal|`<Ctrl>s`|Go to harpoon 1st file in list|
|Harpoon|Normal|`<Ctrl>t`|Go to harpoon 2nd file in list|
|Harpoon|Normal|`<Ctrl>w`|Go to harpoon 3rd file in list|
|Harpoon|Normal|`<Ctrl>o`|Go to harpoon 4th file in list|
|LSP|Normal|`K`|Simulate the mouse hover|
|LSP|Normal|`gf`|Open diagnostic float|
|LSP|Normal|`gd`|Go to definition|
|LSP|Normal|`<leader>f`|Format|
|LSP|Normal|`<leader>vrr`|Find all references|
|LSP|Normal|`<leader>vrn`|Rename|
|LSP|Insert|`<Ctrl><space>`|Autocomplete|
|Telescope|Normal|`<leader>pf`|Find files|
|Telescope|Normal|`<Ctrl>p`|Find only git files|
|Telescope|Normal|`<leader>ps`|Find a string in files|
|Telescope|Normal|`<leader>pw`|Find word under cursor in files|
|Undotree|Normal|`<leader>u`|Toggle undotree menu|
