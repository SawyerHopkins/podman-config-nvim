vim.pack.add({ "https://github.com/nvim-tree/nvim-tree.lua" }, { confirm = false })
vim.pack.add({ 'https://github.com/nvim-telescope/telescope.nvim' }, { confirm = false })

local function telescope_search_node()
  local api = require("nvim-tree.api")
  local node = api.tree.get_node_under_cursor()
  if not node then return end

  local builtin = require("telescope.builtin")

  if node.type == "directory" then
    builtin.live_grep({
      cwd = node.absolute_path,
      prompt_title = "Search in " .. node.name,
    })
  else
    builtin.live_grep({
      search_dirs = { node.absolute_path },
      prompt_title = "Search in " .. node.name,
    })
  end
end

require('nvim-tree').setup({
  diagnostics = {
    enable = true,
    show_on_dirs = true
  },
  modified = {
    enable = true,
    show_on_dirs = true
  },
  on_attach = function(bufnr)
    local api = require("nvim-tree.api")

    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- your custom mapping
    vim.keymap.set("n", "<leader>s", telescope_search_node, opts('Live Grep'))
  end
})
