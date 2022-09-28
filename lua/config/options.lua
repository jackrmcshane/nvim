
local options = {

    -- Set completeopt to have a better completion experience
    completeopt = { 'menuone', 'noselect' },
    fileencoding = 'utf-8',

    mouse = 'a',
    wrap = false,
    hidden = true,
    number = true,
    relativenumber = true,

    updatetime = 250,
    showmode = false,
    signcolumn = 'yes',
    cursorline = true,
    showtabline = 2,

    splitright = true,
    splitbelow = true,

    -- tabbing
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smarttab = true,

    -- indentation
    autoindent = true,
    smartindent = true,
    --breakindent = true,

    --Set highlight on search
    hlsearch = false,
    incsearch = true,
    ignorecase = true,
    smartcase = true,
    --inccommand = 'nosplit',

    -- folding
    foldenable = false, -- for now bc i dont remember the binds
    foldminlines = 4,
    foldnestmax = 10,
    foldmethod = 'expr',
    foldexpr = 'nvim_treesitter#foldexpr()',

}


for k, v in pairs(options) do
	vim.opt[k] = v
end
