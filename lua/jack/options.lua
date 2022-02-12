-- vim.opt.updatetime = 300 -- faster completion


local options = { -- local sets scope of variable, otherwise would be global
    updatetime = 300, -- faster completion
    sidescrolloff = 8, -- chars to have at edge of screen while scrolling
}


for key, val in pairs(options) do
    vim.opt[k] = v
end
