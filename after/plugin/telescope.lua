local builtin = require('telescope.builtin')

function search()
    builtin.grep_string({
        search = vim.fn.input("Grep > ")
    })
end

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', search, {})
