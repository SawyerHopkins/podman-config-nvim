vim.cmd('packadd nvim.undotree')
vim.cmd('packadd nohlsearch')

require('config.diagnostic')
require('config.settings')
require('config.keys')
require('config.autocmds')
