vim.g.mapleader = " "

-- Netrw
vim.keymap.set("n", "<leader>pv", function()
    vim.cmd("Ex")
end)

-- Material Theme selector
vim.keymap.set("n", "<leader>mt", function() vim.cmd(":lua require('material.functions').find_style()") end)
