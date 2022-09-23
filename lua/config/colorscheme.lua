local colorscheme = {}
colorscheme.colorscheme2dir = {
  gruvbox8 = "vim-gruvbox8",
  onedark = "onedark.nvim",
  edge = "edge",
  gruvbox_material = "gruvbox-material",
  nord = "nord.nvim",
  doom_one = "doom-one.nvim",
  everforest = "everforest",
  nightfox = "nightfox.nvim",
  kanagawa = "kanagawa.nvim",
  catppuccin = "catppuccin",
}

colorscheme.gruvbox8 = function()
  -- Italic options should be put before colorscheme setting,
  -- see https://github.com/morhetz/gruvbox/wiki/Terminal-specific#1-italics-is-disabled
  vim.g.gruvbox_italics = 1
  vim.g.gruvbox_italicize_strings = 1
  vim.g.gruvbox_filetype_hi_groups = 1
  vim.g.gruvbox_plugin_hi_groups = 1

  vim.cmd([[colorscheme gruvbox8_hard]])
end

colorscheme.onedark = function()
    vim.cmd([[colorscheme onedark]])
end

colorscheme.edge = function()
  vim.g.edge_enable_italic = 1
  vim.g.edge_better_performance = 1

  vim.cmd([[colorscheme edge]])
end

colorscheme.gruvbox_material = function()
  vim.g.gruvbox_material_enable_italic = 1
  vim.g.gruvbox_material_better_performance = 1

  vim.cmd([[colorscheme gruvbox-material]])
end

colorscheme.nord = function()
  vim.cmd([[colorscheme nord]])
end

colorscheme.doom_one = function()
  vim.cmd([[colorscheme doom-one]])
end

colorscheme.everforest = function()
  vim.g.everforest_enable_italic = 1
  vim.g.everforest_better_performance = 1

  vim.cmd([[colorscheme everforest]])
end

colorscheme.nightfox = function()
  vim.cmd([[colorscheme nordfox]])
end

colorscheme.kanagawa = function()
  vim.cmd([[colorscheme kanagawa]])
end

colorscheme.catppuccin = function()
  -- available option: latte, frappe, macchiato, mocha
  vim.g.catppuccin_flavour = "frappe"

  require("catppuccin").setup()

  vim.cmd([[colorscheme catppuccin]])
end

colorscheme.add_pack = function(scheme)
    local status, error = pcall(vim.cmd, "packadd " .. scheme)
    return status
end


colorscheme.set_colorscheme = function(scheme)

    if not vim.tbl_contains(vim.tbl_keys(colorscheme), scheme) then
        local msg = "Invalid colorscheme: " .. scheme
        vim.notify(msg, vim.log.levels.ERROR, { title = "nvim-config" })
        return
    end


    local status = colorscheme.add_pack(colorscheme.colorscheme2dir[scheme])
    if not status then
        local msg = string.format("Colorscheme %s is not installed. Run PackerSync to install.", colorscheme)
        vim.notify(msg, vim.log.levels.ERROR, { title = "nvim-config" })
        return
    end

    colorscheme[scheme]()
end



-- set colorscheme
local scheme = 'gruvbox8'
colorscheme.set_colorscheme(scheme)
