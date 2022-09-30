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
    -- Show undo history visually
    use { "simnalamburt/vim-mundo", cmd = { "MundoToggle", "MundoShow" } }
    -- fuzzy finder
    use { "Yggdroot/LeaderF", cmd = "Leaderf", run = ":LeaderfInstallCExtension" }

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
    -- completion source for lua language
    use { "ii14/emmylua-nvim", ft = "lua" }
    -- allows goto def, etc.
    -- nvim-lsp configuration (it relies on cmp-nvim-lsp, so it should be loaded after cmp-nvim-lsp).
    use { "neovim/nvim-lspconfig", after = "cmp-nvim-lsp", config = [[require('config.plugins.lsp')]] }
    -- treesitter parser
    use { "nvim-treesitter/nvim-treesitter", event = "BufEnter", run = ":TSUpdate", config = [[require('config.plugins.treesitter')]] }

    -- Git command inside vim
    use { "tpope/vim-fugitive", event = "User InGitRepo", config = [[require('config.plugins.fugitive')]] }
    -- Better git log display
    use { "rbong/vim-flog", requires = "tpope/vim-fugitive", cmd = { "Flog" } }
    -- The missing auto-completion for cmdline!
    use { "gelguy/wilder.nvim", opt = true, setup = [[vim.cmd('packadd wilder.nvim')]] }
    -- akin to auto-pairs but better
    use { "Raimondi/delimitMate", event = "InsertEnter" }
    -- use { 'jiangmiao/auto-pairs' }
    -- use { 'tpope/vim-surround' }
    -- Plugin to manipulate character pairs quickly (alternative to vim-surround)
    use { "machakann/vim-sandwich", event = "VimEnter" }
    use { 'ThePrimeagen/harpoon', requires = 'nvim-lua/plenary.nvim' }
    -- Comment plugin
    use { "tpope/vim-commentary", event = "VimEnter" }
    -- swap function args with ease
    use { "machakann/vim-swap", event = "VimEnter" }
    -- Repeat vim motions
    use { "tpope/vim-repeat", event = "VimEnter" }
    -- .tmux.conf syntax highlighting and setting check
    use { "tmux-plugins/vim-tmux", ft = { "tmux" } }
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

    -- Asynchronous command execution
    use { "skywind3000/asyncrun.vim", opt = true, cmd = { "AsyncRun" } }
    -- Auto format tools
    use { "sbdchd/neoformat", cmd = { "Neoformat" } }
    -- side viewer for tags and lsp nodes (vista)
    use { "kyazdani42/nvim-web-devicons", event = "VimEnter" }
    use { "liuchengxu/vista.vim", cmd = "Vista" }
    -- file explorer
    use { "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" }, config = [[require('config.plugins.nvim-tree')]] }
    -- quick escape with jk (necessary with the autocomplete)
    use { "nvim-zh/better-escape.vim", event = { "InsertEnter" } }
    -- Additional powerful text object for vim, this plugin should be studied
    -- carefully to use its full power
    use { "wellle/targets.vim", event = "VimEnter" }
    -- Autosave files on certain events
    use { "907th/vim-auto-save", event = "InsertEnter" }
    -- sort python import statements alphabetically
    use { 'fisadev/vim-isort' }




    -- Aesthetics
    use { 'nvim-lualine/lualine.nvim' } -- Fancier statusline
    use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
    -- fancy start screen
    use { "glepnir/dashboard-nvim", event = "VimEnter", config = [[require('config.plugins.dashboard-nvim')]] }
    -- Show git change (change, delete, add) signs in vim sign column
    use { "lewis6991/gitsigns.nvim", config = [[require('config.plugins.gitsigns')]] }
    -- Highlight URLs inside vim
    use { "itchyny/vim-highlighturl", event = "VimEnter" }

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







    -- JDHAO
    -- use { 'nvim-lua/plenary.nvim' } -- required by harpon
    -- have to figure out a keymapping or autodetect based on dir to have this work quickly
    -- use { 'junegunn/vim-journal' }
    -- use { 'junegunn/rainbow_parentheses.vim' }
    -- use { 'junegunn/vim-easy-align' }
    -- use { 'metakirby5/codi.vim' }
    -- use 'junegunn/rainbow_parentheses.vim'
    -- interacting with tmux from vim
    -- use { 'preservim/vimux' }
    -- python plugins
    -- interactive python shell opens in vim
    -- use { 'greghor/vim-pyShell' }
    -- allows you to send chunks of code to pyshell w/ keybinds
    -- use { 'julienr/vim-cellmode' }
    -- Python indent (follows the PEP8 style)
    -- use { "Vimjas/vim-python-pep8-indent", ft = { "python" } }
    -- Python-related text object
    -- use { "jeetsukumaran/vim-pythonsense", ft = { "python" } }
    -- Add indent object for vim (useful for languages like Python)
    -- use { "michaeljsmith/vim-indent-object", event = "VimEnter" }

    -- Handy unix command inside Vim (Rename, Move etc.)
    -- use { "tpope/vim-eunuch", cmd = { "Rename", "Delete" } }
    -- extends the vim % operator for matching syntax
    -- use { "andymass/vim-matchup", event = "VimEnter" }
    -- Session management plugin
    -- use { "tpope/vim-obsession", cmd = "Obsession" }

    -- Another markdown plugin
    -- use { "plasticboy/vim-markdown", ft = { "markdown" } }
    -- Faster footnote generation
    -- use { "vim-pandoc/vim-markdownfootnotes", ft = { "markdown" } }
    -- Vim tabular plugin for manipulate tabular, required by markdown plugins
    -- use { "godlygeek/tabular", cmd = { "Tabularize" } }
    -- Markdown JSON header highlight plugin
    -- use { "elzr/vim-json", ft = { "json", "markdown" } }
    -- use { 'iamcco/markdown-preview.nvim', run = function() vim.fn['mkdp#util#install']() end }


    -- LaTex plugins
    -- use { 'vim-latex/vim-latex' }
    -- use { 'lervag/vimtex' }
    -- use { 'Chiel92/vim-autoformat' }
    -- use { 'xuhdev/vim-latex-live-preview' }

    -- Debugger plugin
    -- use { "sakhnik/nvim-gdb", run = { "bash install.sh" }, opt = true, setup = [[vim.cmd('packadd nvim-gdb')]] }
    use { "folke/zen-mode.nvim", cmd = "ZenMode", config = [[require('config.plugins.zen-mode')]] }
    -- alternative to zenmode
    -- use { 'junegunn/goyo.vim' }
    -- use { 'junegunn/limelight.vim' }
    -- use { "kevinhwang91/nvim-bqf", ft = "qf", config = [[require('config.plugins.bqf')]] }
    -- use { "ojroques/vim-oscyank", cmd = { "OSCYank", "OSCYankReg" } }

    -- more git plugins
    -- use { "christoomey/vim-conflicted", requires = "tpope/vim-fugitive", cmd = { "Conflicted" } }
    -- Better git commit experience
    -- use { "rhysd/committia.vim", opt = true, setup = [[vim.cmd('packadd committia.vim')]] }


    -- use { "j-hui/fidget.nvim", after = "nvim-lspconfig", config = [[require('config.plugins.fidget')]] }

    -- Stay after pressing * and search selected text
    use { "haya14busa/vim-asterisk", event = "VimEnter" }
    -- use { 'chrisbra/unicode.vim' }
    -- highlighting for matching keywords
    -- Show match number and index for searching
    use {
      "kevinhwang91/nvim-hlslens",
      branch = "main",
      keys = { { "n", "*" }, { "n", "#" }, { "n", "n" }, { "n", "N" } },
      config = [[require('config.plugins.hlslens')]],
    }

    -- use 'junegunn/rainbow_parentheses.vim'
    -- use 'ludovicchabant/vim-gutentags'
    -- use 'sunjon/shade.nvim'
    -- use 'lambdalisue/suda.vim'
    -- colors background of colorcodes
    -- use 'chrisbra/Colorizer'
    -- markdown preview
    -- use ({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

    -- -- shows keybindings
    -- use {
    --   "folke/which-key.nvim",
    --   event = "VimEnter",
    --   config = function()
    --     vim.defer_fn(function()
    --       require("config.plugins.which-key")
    --     end, 2000)
    --   end,
    -- }


    -- use {
    --   "lukas-reineke/indent-blankline.nvim",
    --   event = "VimEnter",
    --   config = [[require('config.plugins.indent-blankline')]],
    -- }

    -- -- Smoothie motions
    -- use {
    --   "karb94/neoscroll.nvim",
    --   event = "VimEnter",
    --   config = function()
    --     vim.defer_fn(function()
    --       require("config.plugins.neoscroll")
    --     end, 2000)
    --   end,
    -- }

    -- -- notification plugin
    -- use {
    --   "rcarriga/nvim-notify",
    --   event = "BufEnter",
    --   config = function()
    --     vim.defer_fn(function()
    --       require("config.plugins.notify")
    --     end, 2000)
    --   end,
    -- }

end)
