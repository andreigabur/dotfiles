return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    dashboard = {},
    lazygit = {},
  },
  keys = {
    { "<leader>g", function() Snacks.lazygit() end, desc = "Lazy[G]it" }, 
  }
}
