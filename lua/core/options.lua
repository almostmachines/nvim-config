local opt = vim.opt
local opt_local = vim.opt_local
local api = vim.api
local cmd = vim.cmd
local g = vim.g
local M = {}

function M.setup()

    -- ---------- INDENTATION ----------

    -- Disable 'smart indentation' which can override filetype indentation
    opt.smartindent = false

    -- Enable autoindentation, this does not interfere with filetype indentation
    opt.autoindent = true

    -- Set width of tab character in number of spaces
    opt.tabstop = 4

    -- Set width of soft tab in number of spaces
    opt.softtabstop = 4

    -- Set width of indentation in number of spaces
    opt.shiftwidth = 4

    -- Set the tab key to insert spaces (soft tab) not a tab character
    opt.expandtab = true



    -- ---------- SYNTAX ----------

    -- Enable syntax highlighting
    cmd("syntax enable")

    -- Enhance syntax highlighting for dark backgrounds
    opt.background = "dark"



    -- ---------- NAVIGATION ----------

    -- Always show status line
    opt.laststatus = 2

    -- Show the cursor position
    opt.ruler = true

    -- Show line numbers
    opt.number = true

    -- Show (partial) command in status line
    opt.showcmd = true

    -- Show matching brackets
    opt.showmatch = true

    -- Display a minimum number of lines below/above the cursor position
    opt.scrolloff = 5

    -- Do case insensitive matching by default
    opt.ignorecase = true

    -- Do case sensitive matching when search term contains at least one uppercase letter
    opt.smartcase = true

    -- Incremental search
    opt.incsearch = true

    -- Highlight search matches
    opt.hlsearch = true

    -- Wrap search over the end of file
    opt.wrapscan = true

    -- Allow switching buffer without writing first
    opt.hidden = true

    -- Ask to save buffer instead of failing when executing commands which close
    opt.confirm = true

    -- Enable the command-line popup
    opt.cmdheight = 0          		        -- Hide the command line unless needed
    opt.wildmode = { "longest", "full" }  	-- Still useful for behavior
    opt.pumblend = 10          		        -- Optional: transparency effect for popups
    opt.winblend = 10          		        -- Optional: transparency for floating windows
    opt.wildoptions = "pum"    		        -- Use the popup menu for completions



    -- ---------- EDITING ----------

    -- Enable mouse support in all modes
    opt.mouse = "a"

    -- Enable copy and paste using the system clipboard
    opt.clipboard = "unnamedplus"

    -- Require the /g flag for global matching (multiple occurences on the same line)
    opt.gdefault = false

    -- Set text encoding to UTF-8
    opt.encoding = "utf-8"                                                          -- Internal string encoding
    opt.fileencodings = { "utf-8", "iso-2022-jp", "euc-jp", "cp932", "gb18030" }    -- Priority order to try when opening files

    -- Enable omni completion
    opt.omnifunc = "syntaxcomplete#Complete"
    opt.completeopt = { "menu", "menuone", "noselect" }

    -- Soft wrap lines to the width of the display
    opt.wrap = true

    -- Soft wrap at word boundaries (spaces, punctuations etc.)
    opt.linebreak = true

    -- Do not hard wrap lines
    opt.textwidth = 0
    opt.wrapmargin = 0

    -- Do not keep a backup file
    opt.backup = false
    opt.swapfile = false

    -- Do not add an extra space when joining sentences
    opt.joinspaces = false

    -- Length of command line history
    opt.history = 1000

    -- Allow backspacing over everything in insert mode
    opt.backspace = { "indent", "eol", "start" }

    -- Make the tilde ~ change case command into an operator, so that it can be used with motions
    opt.tildeop = true

    -- Vertical diff splits
    opt.diffopt:append("vertical")

    -- Enable beautiful modern colors
    opt.termguicolors = true

    -- Keep signs (like Git indicators or LSP errors) from shifting your text
    opt.signcolumn = "yes"

    -- Highlight the current line
    opt.cursorline = true

    -- Vertical splits go to the right
    opt.splitright = true

    -- Horizontal splits go below
    opt.splitbelow = true

    -- Treat hyphenated words as one unit
    cmd("set iskeyword+=-")

    -- Open a live preview of substitution commands in a split
    opt.inccommand = "split"

    -- Disable spell checking by default
    opt.spell = false

    -- Enable spell checking for specific file types
    api.nvim_create_autocmd("FileType", {
        pattern = { "markdown", "text", "gitcommit" },
        callback = function() opt_local.spell = true end,
    })

    -- Set spell check language
    opt.spelllang = { "en_us" }

    -- Set conceal level for obsidian.nvim features, not sure what this does
    opt.conceallevel = 2



    -- ---------- FILETYPES ----------

    -- Enable filetype-based behavior
    cmd("filetype plugin indent on")



    -- ---------- FILETYPES ----------

    -- Reduce update time from default of 4000ms
    -- Makes GitGutter, LSP diagnostics and CursorHold events snappier
    opt.updatetime = 300



    -- ---------- COLOR SCHEME ----------
    cmd("colorscheme tokyonight-moon")
end

return M
