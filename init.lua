-- Sterile Server Config. No network calls. No plugins.
vim.opt.number = true           -- Show line numbers
vim.opt.relativenumber = true   -- Relative line numbers for easy jumping
vim.opt.tabstop = 4             -- 4 spaces for a tab
vim.opt.shiftwidth = 4          -- 4 spaces for auto-indent
vim.opt.expandtab = true        -- Convert tabs to spaces (crucial for config files)
vim.opt.smartindent = true      -- Smart auto-indenting
vim.opt.ignorecase = true       -- Case-insensitive searching
vim.opt.smartcase = true        -- ...unless you type a capital letter
vim.opt.cursorline = true       -- Highlight the current line

-- OSC 52 Clipboard integration
vim.g.clipboard = {
    name = 'OSC 52',
    copy = {
        ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
        ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
    },
    paste = {
        ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
        ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
    },
}

-- Make yank default to the system clipboard
vim.opt.clipboard = "unnamedplus"
