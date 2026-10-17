-- plugins/config/which-key.lua

return function()
    local wk = require("which-key")

    wk.setup({
        plugins = {
            marks = true,
            registers = true,
            spelling = { enabled = true, suggestions = 20 },
        },
        win = {
            border = "rounded", -- single | double | shadow | none
            padding = { 1, 2, 1, 2 },
            wo = 10,
        },
        layout = {
            width = { min = 20, max = 50 },
            spacing = 4,
        },
    })

    wk.add({
        { "<leader>a", group = "AI", mode = { "n", "v" } },
        { "<leader>ac", group = "CodeCompanion", mode = { "n", "v" } },
        { "<leader>c", group = "Quickfix", mode = { "n", "v" } },
        { "<leader>f", group = "Find", mode = { "n", "v" } },
        { "<leader>g", group = "Git", mode = { "n", "v" } },
        { "<leader>ga", group = "Actions", mode = { "n", "v" } },
        { "<leader>gc", group = "Commits", mode = { "n", "v" } },
        { "<leader>gd", group = "Diff", mode = { "n", "v" } },
        { "<leader>gdh", group = "History", mode = { "n", "v" } },
        { "<leader>gdp", group = "Project", mode = { "n", "v" } },
        { "<leader>gl", group = "Blame", mode = { "n", "v" } },
        { "<leader>gr", group = "Remote", mode = { "n", "v" } },
        { "<leader>h", group = "Hunks", mode = { "n", "v" } },
        { "<leader>i", group = "LSP", mode = { "n", "v" } },
        { "<leader>id", group = "Diagnostics", mode = { "n", "v" } },
        { "<leader>idl", group = "List", mode = { "n", "v" } },
        { "<leader>is", group = "Symbol", mode = { "n", "v" } },
        { "<leader>isr", group = "References", mode = { "n", "v" } },
        { "<leader>l", group = "Local window", mode = { "n", "v" } },
        { "<leader>o", group = "Obsidian", mode = { "n", "v" } },
        { "<leader>ol", group = "Links", mode = { "n", "v" } },
        { "<space>", group = "Hop to", mode = { "n", "v" } },
    })
end
