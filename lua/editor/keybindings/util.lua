local keymap = vim.keymap

-- Copy to clipboard
keymap.set("v", "<leader>y", [["+y]])
keymap.set("v", "<leader>Y", [["+Y]])

-- Rename all occurrences in the current buffer
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- NOP
keymap.set("n", "J", "<nop>")
keymap.set("n", "Q", "<nop>")
