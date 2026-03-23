-- Mason core setup
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- Auto install LSP servers
require("mason-lspconfig").setup({
    ensure_installed = {
        "ts_ls",
        "html",
        "cssls",
        "tailwindcss",
        "lua_ls",
        "pyright",
        "eslint",
        "rust_analyzer",
        "tombi"
    },
    automatic_installation = true,
})

-- Auto install formatters and linters
require("mason-tool-installer").setup({
    ensure_installed = {
        "prettier",
        "stylua",
        "isort",
        "black",
        "pylint",
        "eslint_d",
    },
})
