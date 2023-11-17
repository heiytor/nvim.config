local keymap = vim.keymap

keymap.set("v", "K", ":m '>-2<cr>gv=gv") -- move selected lines to top
keymap.set("v", "J", ":m '>+1<cr>gv=gv") -- move selected lines to bottom
keymap.set("n", "<C-u>", "<C-u>zz") -- goto top-middle
keymap.set("n", "<C-d>", "<C-d>zz") -- goto bottom-middle
keymap.set("n", "n", "nzzzv") -- Keep cursor in the middle when searching
keymap.set("n", "N", "Nzzzv") -- Keep cursor in the middle when searching
