return {
  {
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        -- transparent_background = true,
      })
      -- vim.cmd("colorscheme catppuccin-latte")
    end,
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("dracula").setup({
        transparent_bg = true,
      })
      vim.cmd("colorscheme dracula")
    end,
  },
}
