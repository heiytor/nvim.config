require('nvim-treesitter.configs').setup({
  ensure_installed = { "cpp", "go", "python", "javascript", "typescript", "rust", "c", "lua", "vim", "vimdoc", "query" },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
})
