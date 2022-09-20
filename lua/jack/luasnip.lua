
-- luasnip setup
local ls = require('luasnip')

require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/snippets/"})


ls.config.set_config({
    history = true, -- keep around last snippet local to jump back
    updateevents = "TextChanged,TextChangedI", -- update changes as you type (when using function...)
    enable_autosnippets = true,
    ext_opts = {
        [require("luasnip.util.types").choiceNode] = {
            active = {
                virt_text = { { "-", "GruvboxOrange" } },
            },
        },
    },
})
