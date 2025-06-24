local builtin = require('telescope.builtin')

function SearchWordUnderCursor()
    local word = vim.fn.expand("<cword>")
    builtin.live_grep({default_text = word})
end

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>pw', "<cmd>lua SearchWordUnderCursor()<CR>", {})
