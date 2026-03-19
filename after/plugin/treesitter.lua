-- after/plugin/treesitter.lua

vim.opt.runtimepath:append(vim.fn.stdpath('data') .. '/site')

require('nvim-treesitter').setup {
  install_dir = vim.fn.stdpath('data') .. '/site'
}

require('nvim-treesitter').install { 'rust', 'javascript', 'zig', 'typescript', 'javascript', 'help', 'toml', 'c', 'html', 'css', 'tsx', 'jsx', 'java' }

-- Enable Treesitter highlighting and indentation for all filetypes
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'rust', 'javascript', 'zig', 'typescript', 'toml', 'c', 'html', 'css', 'java' },
  callback = function()
    -- Highlighting
    vim.treesitter.start()

    -- Folding turned off

    -- Indentation (experimental)
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
