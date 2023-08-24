vim.keymap.set("v", "K", ":m '>-2<cr>gv=gv") -- move selected lines to top
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv") -- move selected lines to bottom

vim.keymap.set("n", "<C-u>", "<C-u>zz") -- goto top-middle
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- goto bottom-middle

-- keep cursor in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- copy to clipboard
vim.keymap.set("v", "<leader>y", [["+y]])
vim.keymap.set("v", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Remove some default keybinds
vim.keymap.set("n", "J", "<nop>")
vim.keymap.set("n", "Q", "<nop>")
