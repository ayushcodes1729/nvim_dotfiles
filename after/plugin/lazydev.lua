require('lazydev').setup({
    library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
    },
})

-- tell lua_ls about vim global explicitly
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})
