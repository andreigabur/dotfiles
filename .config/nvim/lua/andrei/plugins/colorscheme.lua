return {
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
      })
      vim.cmd("colorscheme catppuccin-frappe")
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd("colorscheme tokyonight")
    end,
  }
}
