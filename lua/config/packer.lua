-- Install packer if not installed on system
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

-- packer is a lua based package manager for vim
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end


local use = require('packer').use
require('packer').startup( function()

    -- Functionality
    -- it is recommended to put impatient.nvim before any other plugins
    use { "lewis6991/impatient.nvim", config = [[require('impatient')]] }
    use { "wbthomason/packer.nvim" }

    use { "SirVer/ultisnips", event = "InsertEnter" }
    use { "honza/vim-snippets", after = "ultisnips" }

    use { 'jiangmiao/auto-pairs' }
    use { 'tpope/vim-surround' }

    -- JDHAO

    -- Python indent (follows the PEP8 style)
    use { "Vimjas/vim-python-pep8-indent", ft = { "python" } }
    -- Python-related text object
    use { "jeetsukumaran/vim-pythonsense", ft = { "python" } }
    -- Stay after pressing * and search selected text
    use { "haya14busa/vim-asterisk", event = "VimEnter" }
    -- Highlight URLs inside vim
    use { "itchyny/vim-highlighturl", event = "VimEnter" }
    use { 'nvim-lualine/lualine.nvim' } -- Fancier statusline

    use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }


    -- Aesthetics
    use { "lifepillar/vim-gruvbox8", opt = true }
    use { "navarasu/onedark.nvim", opt = true }
    use { "sainnhe/edge", opt = true }
    use { "sainnhe/gruvbox-material", opt = true }
    use { "shaunsingh/nord.nvim", opt = true }
    use { "NTBBloodbath/doom-one.nvim", opt = true }
    use { "sainnhe/everforest", opt = true }
    use { "EdenEast/nightfox.nvim", opt = true }
    use { "rebelot/kanagawa.nvim", opt = true }
    use { "catppuccin/nvim", as = "catppuccin", opt = true }

end)
