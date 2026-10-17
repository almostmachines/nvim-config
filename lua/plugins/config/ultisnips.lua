-- plugins/config/ultisnips.lua

local g = vim.g

return function()
    g.UltiSnipsSnippetDirectories = { '~/.config/nvim/ultisnips', 'UltiSnips', 'ultisnips' }
    g.UltiSnipsExpandTrigger = "<Tab>"
    g.UltiSnipsJumpForwardTrigger = "<Tab>"
    g.UltiSnipsJumpBackwardTrigger = "<S-Tab>"
end
