return {
  {
    "thesimonho/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa-paper").setup({
        transparent = true,
      })

      -- vim.cmd.colorscheme("kanagawa-paper-ink")
    end,
  },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function() end,
  },
  {
    "mcauley-penney/techbase.nvim",
    config = function()
      vim.cmd.colorscheme("techbase")
    end,
    priority = 1000,
  },
}
