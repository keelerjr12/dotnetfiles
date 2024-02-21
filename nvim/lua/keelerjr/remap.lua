vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<esc>", defaults)

-- Center page when moving up/down half page
vim.keymap.set("n", "<C-d>", "<C-d>zz", defaults)
vim.keymap.set("n", "<C-u>", "<C-u>zz", defaults)

-- Center after moving to newer/older positions
vim.keymap.set("n", "<C-o>", "<C-o>zz", defaults)
vim.keymap.set("n", "<C-i>", "<C-i>zz", defaults)

-- Move to first/last character
vim.keymap.set("n", "H", "^", defaults)
vim.keymap.set("n", "L", "$", defaults)

-- Move lines up/down in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap=true })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap=true })

-- Run formatter
vim.keymap.set("n", "<leader>f", function() 
    vim.lsp.buf.format()
end) 
