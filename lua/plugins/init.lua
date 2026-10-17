-- plugins/init.lua

return {
    -- -------- BOOTSTRAP --------

    { "folke/lazy.nvim" },



    -- -------- COLOR SCHEMES --------

    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("plugins.config.gruvbox")()
        end,
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    {
        "zanloy/vim-colors-sunburst",
    },

    {
        "kepano/flexoki-neovim",
        name = "flexoki"
    },



    -- -------- UI --------

    -- UI for messages, cmdline and the popupmenu
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            require("plugins.config.noice")()
        end,
    },

    {
        "rcarriga/nvim-notify",
        event = "VeryLazy",
        config = function()
            require("plugins.config.notify")()
        end,
    },

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = function()
            require("plugins.config.which-key")()
        end,
    },

    {
        "echasnovski/mini.icons",
        event = "VeryLazy",
        version = false,
    },

    {

        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("plugins.config.lualine")()
        end,
    },



    -- -------- SEARCH --------

    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = vim.fn.executable("make") == 1,
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("plugins.config.telescope")()
        end,
    },

    {
        "ibhagwan/fzf-lua",
        dependencies = { "echasnovski/mini.icons" },
        opts = {},
    },

    {
        "folke/snacks.nvim",
        ---@type snacks.Config
        opts = {
            picker = {
                -- your picker configuration comes here
                -- or leave it empty to use the default settings
            },
            input = {
                -- your input configuration comes here
                -- or leave it empty to use the default settings
            },
        }
    },



    -- -------- SNIPPETS --------

    {
        "honza/vim-snippets",
        event = "VeryLazy",
    },

    {
        "SirVer/ultisnips",
        event = "VeryLazy",
        init = function()
            require("plugins.config.ultisnips")()
        end,
    },



    -- -------- COMPLETION --------

    {
        "saghen/blink.cmp",
        version = '1.*',
        dependencies = {
            "saghen/blink.compat",
            'quangnguyen30192/cmp-nvim-ultisnips',
        },
        event = { "InsertEnter", "CmdlineEnter" },
        opts = require('plugins.config.blink').opts,
        opts_extend = require('plugins.config.blink').opts_extend,
        config = require('plugins.config.blink').config,
    },

    {
        "mfussenegger/nvim-dap",
    },



    -- -------- GENERAL CODING --------

    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("plugins.config.treesitter")()
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        branch = "main",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("plugins.config.treesitter-textobjects")()
        end,
    },

    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
    },

    {
        "sindrets/diffview.nvim",
        event = "VeryLazy",
    },

    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        config = function()
            require("plugins.config.gitsigns")()
        end,
    },

    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble",
    },



    -- -------- LANGUAGES --------

    {
        "ledger/vim-ledger",
        event = "VeryLazy",
    },

    {
        'mrcjkb/rustaceanvim',
        version = '^6', -- Recommended
        lazy = false, -- This plugin is already lazy
    },



    -- -------- LSP --------

    {
        "williamboman/mason.nvim",
        config = function()
            require("plugins.config.mason")()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("plugins.config.mason-lspconfig")()
        end,
    },

    {
        "neovim/nvim-lspconfig",
    },



    -- -------- NAVIGATION --------

    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
            "TmuxNavigatorProcessList",
        },
        keys = {
            { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    },

    {
        'smoka7/hop.nvim',
        version = "*",
        opts = {
            keys = 'etovxqpdygfblzhckisuran'
        }
    },



    -- -------- EDITING --------

    {
        "tpope/vim-surround",
        event = "VeryLazy",
    },

    {
        "tpope/vim-repeat",
        event = "VeryLazy",
    },

    {
        "echasnovski/mini.pairs",
        version = false,
        config = function()
            require("plugins.config.mini-pairs")()
        end,
    },

    {
        "windwp/nvim-ts-autotag",
        version = false,
        config = function()
            require("plugins.config.nvim-ts-autotag")()

        end,
    },



    -- -------- AI --------

    {
        "olimorris/codecompanion.nvim",
        config = function()
            require("plugins.config.codecompanion.codecompanion")()
        end,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
    },

    {
        "coder/claudecode.nvim",
        dependencies = { "folke/snacks.nvim" },
        config = true,
    },



    -- -------- UTIL --------
    {
        "nvim-lua/plenary.nvim",
    },



    -- -------- FILES --------
    {
        'nvim-mini/mini.files',
        version = false,
        config = function()
            require("plugins.config.mini-files")()
        end,
    },



    -- -------- IMAGES --------
    {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
            filetypes = {
                codecompanion = {
                    prompt_for_file_name = false,
                    template = "[Image]($FILE_PATH)",
                    dir_path = "/home/ren/Downloads",
                    use_absolute_path = true,
                    relative_to_current_file = false,
                    relative_template_path = false,
                },
            },
        },
    },

    -- -------- OBSIDIAN --------
    {
        "obsidian-nvim/obsidian.nvim",
        version = "*", -- use latest release, remove to use latest commit
        ---@module 'obsidian'
        ---@type obsidian.config
        ---require("obsidian").setup {
        config = function()
            require("plugins.config.obsidian")()
        end,
    }
}
