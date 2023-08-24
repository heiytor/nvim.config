local lsp = require("lsp-zero").preset({})

local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}

-- fix Undefined global 'vim'
lsp.nvim_workspace()

lsp.ensure_installed({
    "gopls",
    "rust_analyzer",
})

--  Servers configuration
require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())
require("lspconfig").gopls.setup({
    settings = {
        gopls = {
            gofumpt = true
        },
    },
})

-- Remaps
local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<S-Tab>"] = nil,
    ["<Tab>"]   = nil,
    ["<C-p>"]   = cmp.mapping.select_prev_item(cmp_select),
    ["<C-n>"]   = cmp.mapping.select_next_item(cmp_select),
    ["<Enter>"] = cmp.mapping.confirm({ select = true }),
})
lsp.setup_nvim_cmp({ mapping = cmp_mappings })

lsp.on_attach(function(_, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "<F2>", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>ref", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
end)

-- Preferences
lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons          = {
        error = "E",
        warn  = "W",
        hint  = "H",
        info  = "I",
    }
})

lsp.setup()

