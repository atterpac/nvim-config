-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or
	  requires = { { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim', 'nvim-telescope/telescope-media-files.nvim' }}
      }
   -- Telescope file browser
   use {
       'nvim-telescope/telescope-file-browser.nvim',
       requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' }
   }
   -- Theme
   use ({
	   'folke/tokyonight.nvim',
	   config = function()
		   vim.cmd('colorscheme tokyonight-night')
	   end
	})
    -- Treesitter
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    -- Harpoon
    use ('theprimeagen/harpoon')
    -- Undo Tree
    use ('mbbill/undotree')
    -- Fugitive
    use ('tpope/vim-fugitive')
    -- LSP-Zero
    use {
  	'VonHeikemen/lsp-zero.nvim',
  	branch = 'v2.x',
  	requires = {
    	-- LSP Support
    	{'neovim/nvim-lspconfig'},             -- Required
    	{                                      -- Optional
      	'williamboman/mason.nvim',
      		run = function()
        	pcall(vim.cmd, 'MasonUpdate')
      	end,
	},
    	{'williamboman/mason-lspconfig.nvim'}, -- Optional

    	-- Autocompletion
    	{'hrsh7th/nvim-cmp'},     -- Required
    	{'hrsh7th/cmp-nvim-lsp'}, -- Required
    	{'L3MON4D3/LuaSnip'},     -- Required
}
}
    -- Toggle Term
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  	require("toggleterm").setup()
	end}
end)
