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
    -- decreases load startup time
    use { "lewis6991/impatient.nvim", config = [[require('impatient')]] }
    use { "wbthomason/packer.nvim" }

    -- snippets management
    use { "SirVer/ultisnips", event = "InsertEnter" }
    use { "honza/vim-snippets", after = "ultisnips" }

    -- use { 'jiangmiao/auto-pairs' }
    use { 'tpope/vim-surround' }
    -- Comment plugin
    use { "tpope/vim-commentary", event = "VimEnter" }




    -- completion engine stuff
    use { "onsails/lspkind-nvim", event = "VimEnter" }
    -- auto-completion engine
    use { "hrsh7th/nvim-cmp", after = "lspkind-nvim", config = [[require('config.plugins.cmp')]] }
    -- nvim-cmp completion sources
    use { "hrsh7th/cmp-nvim-lsp", after = "nvim-cmp" }
    use { "hrsh7th/cmp-path", after = "nvim-cmp" }
    use { "hrsh7th/cmp-buffer", after = "nvim-cmp" }
    use { "hrsh7th/cmp-omni", after = "nvim-cmp" }
    use { "quangnguyen30192/cmp-nvim-ultisnips", after = { "nvim-cmp", "ultisnips" } }


    -- allows goto def, etc.
    -- nvim-lsp configuration (it relies on cmp-nvim-lsp, so it should be loaded after cmp-nvim-lsp).
    use { "neovim/nvim-lspconfig", after = "cmp-nvim-lsp", config = [[require('config.plugins.lsp')]] }

    -- treesitter parser
    use {
        "nvim-treesitter/nvim-treesitter",
        event = "BufEnter",
        run = ":TSUpdate",
        config = [[require('config.plugins.treesitter')]],
    }



    -- JDHAO
    -- Automatic insertion and deletion of a pair of characters
    use { "Raimondi/delimitMate", event = "InsertEnter" }
    -- Python indent (follows the PEP8 style)
    use { "Vimjas/vim-python-pep8-indent", ft = { "python" } }
    -- Python-related text object
    use { "jeetsukumaran/vim-pythonsense", ft = { "python" } }
    -- Add indent object for vim (useful for languages like Python)
    use { "michaeljsmith/vim-indent-object", event = "VimEnter" }
    -- Highlight URLs inside vim
    use { "itchyny/vim-highlighturl", event = "VimEnter" }
    -- fuzzy finder
    use { "Yggdroot/LeaderF", cmd = "Leaderf", run = ":LeaderfInstallCExtension" }
    -- swap function args with ease
    use { "machakann/vim-swap", event = "VimEnter" }
    -- Asynchronous command execution
    use { "skywind3000/asyncrun.vim", opt = true, cmd = { "AsyncRun" } }
    -- Handy unix command inside Vim (Rename, Move etc.)
    use { "tpope/vim-eunuch", cmd = { "Rename", "Delete" } }
    -- quick escape with jk
    use { "nvim-zh/better-escape.vim", event = { "InsertEnter" } }
    -- Repeat vim motions
    use { "tpope/vim-repeat", event = "VimEnter" }
    -- Plugin to manipulate character pairs quickly
    use { "machakann/vim-sandwich", event = "VimEnter" }
    -- Auto format tools
    use { "sbdchd/neoformat", cmd = { "Neoformat" } }
    -- Modern matchit implementation
    use { "andymass/vim-matchup", event = "VimEnter" }
    -- Autosave files on certain events
    use { "907th/vim-auto-save", event = "InsertEnter" }
    -- Show undo history visually
    use { "simnalamburt/vim-mundo", cmd = { "MundoToggle", "MundoShow" } }
    -- .tmux.conf syntax highlighting and setting check
    use { "tmux-plugins/vim-tmux", ft = { "tmux" } }
    -- Session management plugin
    use { "tpope/vim-obsession", cmd = "Obsession" }
    use { "kyazdani42/nvim-web-devicons", event = "VimEnter" }
    -- Another markdown plugin
    use { "plasticboy/vim-markdown", ft = { "markdown" } }
    -- Faster footnote generation
    use { "vim-pandoc/vim-markdownfootnotes", ft = { "markdown" } }
    -- Vim tabular plugin for manipulate tabular, required by markdown plugins
    use { "godlygeek/tabular", cmd = { "Tabularize" } }
    -- Markdown JSON header highlight plugin
    use { "elzr/vim-json", ft = { "json", "markdown" } }
    -- fancy start screen
    use { "glepnir/dashboard-nvim", event = "VimEnter", config = [[require('config.plugins.dashboard-nvim')]] }
    -- Debugger plugin
    use { "sakhnik/nvim-gdb", run = { "bash install.sh" }, opt = true, setup = [[vim.cmd('packadd nvim-gdb')]] }
    use { "folke/zen-mode.nvim", cmd = "ZenMode", config = [[require('config.plugins.zen-mode')]] }
    use { "kevinhwang91/nvim-bqf", ft = "qf", config = [[require('config.plugins.bqf')]] }
    use { "ojroques/vim-oscyank", cmd = { "OSCYank", "OSCYankReg" } }
    -- Git command inside vim
    use { "tpope/vim-fugitive", event = "User InGitRepo", config = [[require('config.plugins.fugitive')]] }
    -- Better git log display
    use { "rbong/vim-flog", requires = "tpope/vim-fugitive", cmd = { "Flog" } }
    use { "christoomey/vim-conflicted", requires = "tpope/vim-fugitive", cmd = { "Conflicted" } }
    -- Show git change (change, delete, add) signs in vim sign column
    use { "lewis6991/gitsigns.nvim", config = [[require('config.plugins.gitsigns')]] }
    -- Better git commit experience
    use { "rhysd/committia.vim", opt = true, setup = [[vim.cmd('packadd committia.vim')]] }
    -- The missing auto-completion for cmdline!
    use { "gelguy/wilder.nvim", opt = true, setup = [[vim.cmd('packadd wilder.nvim')]] }
    -- Additional powerful text object for vim, this plugin should be studied
    -- carefully to use its full power
    use { "wellle/targets.vim", event = "VimEnter" }
    -- side viewer for tags and lsp nodes
    use { "liuchengxu/vista.vim", cmd = "Vista" }
    -- completion source for lua language
    use { "ii14/emmylua-nvim", ft = "lua" }
    use { "j-hui/fidget.nvim", after = "nvim-lspconfig", config = [[require('config.plugins.fidget')]] }
    -- Stay after pressing * and search selected text
    use { "haya14busa/vim-asterisk", event = "VimEnter" }
    use { 'chrisbra/unicode.vim' }
    -- highlighting for matching keywords
    -- Show match number and index for searching
    use {
      "kevinhwang91/nvim-hlslens",
      branch = "main",
      keys = { { "n", "*" }, { "n", "#" }, { "n", "n" }, { "n", "N" } },
      config = [[require('config.plugins.hlslens')]],
    }

    -- Super fast buffer jump
    use {
      "phaazon/hop.nvim",
      event = "VimEnter",
      config = function()
        vim.defer_fn(function()
          require("config.plugins.hop")
        end, 2000)
      end,
    }

    -- showing keybindings
    use {
      "folke/which-key.nvim",
      event = "VimEnter",
      config = function()
        vim.defer_fn(function()
          require("config.plugins.which-key")
        end, 2000)
      end,
    }

    -- file explorer
    use {
      "kyazdani42/nvim-tree.lua",
      requires = { "kyazdani42/nvim-web-devicons" },
      config = [[require('config.plugins.nvim-tree')]],
    }

    use {
      "lukas-reineke/indent-blankline.nvim",
      event = "VimEnter",
      config = [[require('config.plugins.indent-blankline')]],
    }

    -- Smoothie motions
    use {
      "karb94/neoscroll.nvim",
      event = "VimEnter",
      config = function()
        vim.defer_fn(function()
          require("config.plugins.neoscroll")
        end, 2000)
      end,
    }

    -- notification plugin
    use {
      "rcarriga/nvim-notify",
      event = "BufEnter",
      config = function()
        vim.defer_fn(function()
          require("config.plugins.notify")
        end, 2000)
      end,
    }





    -- Aesthetics
    use { 'nvim-lualine/lualine.nvim' } -- Fancier statusline
    use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }

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
