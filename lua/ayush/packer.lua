-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', 
		-- or
		requires = {'nvim-lua/plenary.nvim'}
	}

	use "rebelot/kanagawa.nvim"

	use (
		'nvim-treesitter/nvim-treesitter',
		{run = ':TSUpdate'}
	)

	use ('theprimeagen/harpoon')
	use ('mbbill/undotree')
	use ('tpope/vim-fugitive')
	use ('mason-org/mason.nvim')
	use ('williamboman/mason-lspconfig.nvim')   -- bridges mason and lspconfig
	use ('neovim/nvim-lspconfig')               -- actually configures the LSPs
	use ('WhoIsSethDaniel/mason-tool-installer.nvim')  -- auto installs formatters/linters

	-- Autocompletion
	use ('hrsh7th/nvim-cmp')           -- the completion engine
	use ('hrsh7th/cmp-nvim-lsp')       -- LSP completions source
	use ('hrsh7th/cmp-buffer')         -- completions from current buffer
	use ('hrsh7th/cmp-path')           -- completions for file paths

	-- Snippets (required by cmp)
	use ('L3MON4D3/LuaSnip')           -- snippet engine
	use ('saadparwaiz1/cmp_luasnip')   -- connects luasnip to cmp
	use ('rafamadriz/friendly-snippets') -- collection of useful snippets

	use ('folke/lazydev.nvim')


end)
