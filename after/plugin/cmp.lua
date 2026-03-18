local cmp = require('cmp')
local luasnip = require('luasnip')

-- load VSCode-style snippets from friendly-snippets
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    completion = {
        completeopt = 'menu,menuone,preview,noselect',
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.select_prev_item(),  -- previous suggestion
        ['<C-j>'] = cmp.mapping.select_next_item(),  -- next suggestion
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),      -- trigger completion
        ['<C-e>'] = cmp.mapping.abort(),             -- close completion
        ['<CR>'] = cmp.mapping.confirm({ select = false }), -- confirm selection
    }),
    sources = cmp.config.sources({
	    { name = 'lazydev', group_index = 0 }, -- highest priority for lua files
	    { name = 'nvim_lsp' },   -- LSP completions
	    { name = 'luasnip' },    -- snippet completions
	    { name = 'buffer' },     -- text in current buffer
	    { name = 'path' },       -- file paths
    }),
})

-- tell LSP servers about cmp capabilities
local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config('*', {
    capabilities = capabilities,
})
