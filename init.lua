-- Install packer if not installed on system
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

-- packer is a lua based package manager for vim
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

-- automatically calls :PackerCompiler after writing to init.lua
vim.cmd [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]]


-- includes plugins
local use = require('packer').use
require('packer').startup( function()
  use 'wbthomason/packer.nvim' -- Package manager

  -- Aesthetics
  use 'mjlbach/onedark.nvim' -- Theme inspired by Atom
  use 'nvim-lualine/lualine.nvim' -- Fancier statusline
  use 'sunjon/shade.nvim'

  -- Functionality
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-surround'
  use 'lambdalisue/suda.vim'
  use 'alvan/vim-closetag'
  use 'xuhdev/vim-latex-live-preview'
  use 'dkarter/bullets.vim'
  use 'junegunn/rainbow_parentheses.vim'
  use 'chrisbra/Colorizer'
  use 'mhinz/vim-startify'
  use 'tpope/vim-fugitive' -- Git commands in nvim
  use 'tpope/vim-rhubarb' -- Fugitive-companion to interact with github
  use 'ludovicchabant/vim-gutentags' -- Automatic tags management
  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
  -- Add indentation guides even on blank lines
  use 'lukas-reineke/indent-blankline.nvim'
  -- Add git related info in the signs columns and popups
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }

  -- Highlight, edit, and navigate code using a fast incremental parsing library
  use 'nvim-treesitter/nvim-treesitter'
  -- Additional textobjects for treesitter
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'

  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- UI to select things (files, grep results, open buffers...)
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
end)


-- import my personal settings at ./lua/jack/*
require('jack/general')
require('jack/mappings')
require('jack/aesthetics')
require('jack/tsitter')
require('jack/lspconfig')
require('jack/autocomplete')
require('jack/luasnip')
require('jack/tele')
require('jack/gitsigns')
require('jack/commenter')
require('jack/shadecfg')
require('jack/startify')
require('jack/suda')
require('jack/texviewer')
require('jack/indent-blankline')
