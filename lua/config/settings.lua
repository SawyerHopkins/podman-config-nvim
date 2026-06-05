vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.no_plugin_maps = true -- Disable entire built-in ftplugin mappings to avoid conflicts.
vim.g.loaded_netrw = 1 -- Disable netrw
vim.g.loaded_netrwPlugin = 1 -- Disable netrw

vim.opt.tabstop = 2         -- Number of spaces that a <Tab> character displays as
vim.opt.shiftwidth = 2      -- Number of spaces used for each step of (auto)indent
vim.opt.softtabstop = 2     -- Number of spaces a <Tab> counts for while editing (in insert mode)
vim.opt.expandtab = true    -- Convert tabs to spaces (insert spaces instead of literal tab characters)
vim.opt.foldlevelstart = 99 -- Initial fold level when opening a file (99 = effectively all folds open)
vim.opt.mousemoveevent = false -- Enable mouse move events (triggers events on mouse movement, useful for plugins/UI) 
vim.opt.cursorline = true   -- Enable highlighting of the current line
vim.opt.clipboard = vim.env.SSH_CONNECTION and '' or 'unnamedplus' -- Sync with system clipboard
vim.opt.laststatus = 3 -- global status line
vim.opt.list =  true -- show some invisible characters
vim.opt.pumblend = 10 -- popup blend
vim.opt.relativenumber = true -- relative line numbers
vim.opt.scrolloff = 4 -- rows of context
vim.opt.sidescrolloff = 8 -- columns of context
vim.opt.shiftround = true -- size indent
vim.opt.winminwidth = 5 -- Minimum window width
