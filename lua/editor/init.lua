vim.g.mapleader = " "

require("editor.colorscheme")
require("editor.config")

require("editor.keybindings.explorer")
require("editor.keybindings.movement")
require("editor.keybindings.util")

require("editor.plugins.autopairs")
require("editor.plugins.comment")
require("editor.plugins.formatter")
require("editor.plugins.fugitive")
require("editor.plugins.gitsigns")
require("editor.plugins.harpoon")
require("editor.plugins.ibl")
require("editor.plugins.lsp")
require("editor.plugins.lualine")
require("editor.plugins.telescope")
require("editor.plugins.treesitter")
require("editor.plugins.undotree")
