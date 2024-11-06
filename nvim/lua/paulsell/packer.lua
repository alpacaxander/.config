vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.8',
   requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  "neanias/everforest-nvim",
	  as = 'everforest',
	  -- Optional; default configuration will be used if setup isn't called.
	  config = function()
		  require("everforest").setup({
			  background = "hard",
		  })
	  end,
  })


  use('nvim-treesitter/nvim-treesitter', { run= ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use({
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig",
  })

end)
