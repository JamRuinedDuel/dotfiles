vim.pack.add({
  -- load dependencies first
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-tree.lua", name = "nvim-tree" },
})

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.g.termguicolors = true

require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
    relativenumber = true,
	},
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  filters = {
    custom = { ".DS_Store" },
  },
  git = {
    ignore = false,
  },
	renderer = {
		group_empty = true,
	},
  on_attach = function(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
      return {
        desc = "nvim-tree: " .. desc,
        buffer = bufnr,
        noremap = true,
        silent = true,
        nowait = true,
      }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<C-t>',  api.tree.change_root_to_parent,   opts('Up'))
    vim.keymap.set('n', '?',      api.tree.toggle_help,             opts('Help'))
  end
})

local keymap = vim.keymap

keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = "Toggle file explorer" })
keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', { desc = "Toggle file explorer on current file" })
keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>', { desc = "Collapse file explorer" })
keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = "Refresh file explorer" })
