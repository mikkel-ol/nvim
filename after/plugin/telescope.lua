local builtin = require('telescope.builtin')

function search()
    builtin.grep_string({
        search = vim.fn.input("Grep > ")
    })
end

vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
vim.keymap.set('n', '<leader>fd', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', search, {})
