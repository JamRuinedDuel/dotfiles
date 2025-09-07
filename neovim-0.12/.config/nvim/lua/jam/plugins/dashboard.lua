vim.pack.add({
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/nvimdev/dashboard-nvim" },
})

require('dashboard').setup({
  theme= 'doom',
  config = {
    header = {
      [[                                                      ]],
      [[                                                      ]],
      [[                                                      ]],
      [[                                                      ]],
      [[                                                      ]],
      [[██████████████████████████████████  ██  ██████████████]],
      [[██                                                  ██]],
      [[██  ██████  ██████  ██████  ██  ██  ██  ██████████  ██]],
      [[██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██]],
      [[██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██]],
      [[██  ██  ██  ██████  ██  ██  ██  ██  ██  ██  ██  ██  ██]],
      [[██  ██  ██  ██      ██  ██  ██  ██  ██  ██  ██  ██  ██]],
      [[██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██  ██]],
      [[██  ██  ██  ██████  ██████   ██   ██  ██  ██  ██  ██]],
      [[██                                                  ██]],
      [[██████████████████████████████████████████████████████]],
      [[                                                      ]],
      [[                                                      ]],
    },
    vertical_center = true,
  },
})

local api = vim.api

api.nvim_set_hl(0, "DashboardHeader", { fg = "#8FBCBB" })
api.nvim_set_hl(0, "DashboardCenter", { fg = "#88C0D0" })
api.nvim_set_hl(0, "DashboardFooter", { fg = "#88C0D0" })
