return {
  "neovim/nvim-kspconfig",
  opts = function()
    local ret = {
      inlay_hints = {
        enabled = false,
      },
    }
    return ret
  end,
}
