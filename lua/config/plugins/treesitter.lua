require("nvim-treesitter.configs").setup {
  ensure_installed = { "python", "c", "cpp", "lua", "vim", "bash" },
  ignore_install = {}, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = {}, -- list of language that will be disabled
  },
}



-- stops whole line highlight while typing
vim.treesitter.highlighter.hl_map.error = nil
