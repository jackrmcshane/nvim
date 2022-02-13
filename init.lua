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
  use 'mjlbach/onedark.nvim' -- Theme inspired by Atom
  use 'nvim-lualine/lualine.nvim' -- Fancier statusline
  -- Highlight, edit, and navigate code using a fast incremental parsing library
  use 'nvim-treesitter/nvim-treesitter'
  -- Additional textobjects for treesitter
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'jiangmiao/auto-pairs'

  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'

  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
end)


-- import my personal settings at ./lua/jack/*
require('jack/general')
require('jack/mappings')
require('jack/aesthetics')
require('jack/tsitter')
require('jack/lspconfig')

