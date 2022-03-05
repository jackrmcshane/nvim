-- startify settings
vim.g.startify_session_dir='$HOME/.config/nvim/sessions'
vim.g.startify_fortune_use_unicode = 1
vim.cmd [[
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
]]

vim.cmd [[
let g:startify_custom_header = [
        \ '    _        _______  _______          _________ _______ ',
        \ '   ( (    /|(  ____ \(  ___  )|\     /|\__   __/(       )',
        \ '   |  \  ( || (    \/| (   ) || )   ( |   ) (   | () () |',
        \ '   |   \ | || (__    | |   | || |   | |   | |   | || || |',
        \ '   | (\ \) ||  __)   | |   | |( (   ) )   | |   | |(_)| |',
        \ '   | | \   || (      | |   | | \ \_/ /    | |   | |   | |',
        \ '   | )  \  || (____/\| (___) |  \   /  ___) (___| )   ( |',
        \ '   |/    )_)(_______/(_______)   \_/   \_______/|/     \|',
        \]
]]
