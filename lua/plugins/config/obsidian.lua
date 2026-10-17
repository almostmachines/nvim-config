-- plugins/config/obsidian.lua

local function use_frontmatter_title_as_display_name()
    local Note = require("obsidian.note")

    if Note._frontmatter_title_display_name then
        return
    end

    local default_display_name = Note.display_name
    Note.display_name = function(note)
        local title = note.metadata and note.metadata.title
        if type(title) == "string" and title ~= "" then
            return title
        end
        return default_display_name(note)
    end
    Note._frontmatter_title_display_name = true
end

return function()
    require("obsidian").setup({
        attachments = {
            folder = "/File Attachments/Images",
        },
        legacy_commands = false, -- this will be removed in 4.0.0
        picker = {
            name = "snacks.picker",
        },
        link = {
            style = "markdown"
        },
        note = {
            template = vim.NIL, -- disables the default note template and just use a blank note
        },
        note_id_func = function(title)
            return title
        end,
        templates = {
            folder = "Templates",
            customizations = {
                ["atomic note"] = {
                    notes_subdir = "Atomic Notes",
                },
                ["composite note"] = {
                    notes_subdir = "Composite Notes",
                },
                ["fleeting note"] = {
                    notes_subdir = "Fleeting Notes",
                },
                ["how-to"] = {
                    notes_subdir = "How-tos",
                },
                ["map of content"] = {
                    notes_subdir = "Maps of Content",
                },
                ["mutable note"] = {
                    notes_subdir = "Mutable Notes",
                },
                quote = {
                    notes_subdir = "Quote",
                },
                ["resource annotations"] = {
                    notes_subdir = "Resource Annotations",
                },
                ["resource summary"] = {
                    notes_subdir = "Resource Summary",
                },
                resource = {
                    notes_subdir = "Resources",
                },
            },
        },
        workspaces = {
            {
                name = "personal",
                path = "/data/apps/obsidian",
            },
        },
    })

    use_frontmatter_title_as_display_name()
end

