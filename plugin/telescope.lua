--[[
Adds (fuzzy) search functionality for various providers (buffers, lsp, git)
--]]

--[[ INSTALL --]]

vim.pack.add({ 'https://github.com/nvim-lua/plenary.nvim' }, { confirm = false })
vim.pack.add({ 'https://github.com/nvim-telescope/telescope-fzf-native.nvim' }, { confirm = false })
vim.pack.add({ 'https://github.com/nvim-telescope/telescope.nvim' }, { confirm = false })
vim.pack.add({ 'https://github.com/folke/which-key.nvim' }, { confirm = false })
vim.pack.add({ 'https://github.com/nvim-telescope/telescope-ui-select.nvim' }, { confirm = false })

--[[ SETUP --]]

require('telescope').setup({
  extensions = {
    ["ui-select"] = {
      require('telescope.themes').get_dropdown({})
    }
  },
  pickers = {
    find_files = {
      mappings = {
        n = {
          ["<leader>sg"] = sendToGrep
        }
      }
    }
  }
})

vim.api.nvim_create_autocmd('User', {
  pattern = 'TelescopePreviewerLoaded',
  callback = function(args)
    if args.data.filetype ~= 'help' then
      vim.wo.number = true
    elseif args.data.bufname:match('*.csv') then
      vim.wo.wrap = false
    end
  end,
})

require("telescope").load_extension("ui-select")

