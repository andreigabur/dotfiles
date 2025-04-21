return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  keys = {
    { "<leader>t", "", desc = "[T]ree ..." },
    { "<leader>tt", "<cmd>Neotree toggle<cr>", desc = "[T]ree [T]oggle" },
    { "<leader>tr", "<cmd>Neotree reveal<cr>", desc = "[T]ree [R]eveal" },
    { "<leader>tu", "<cmd>Neotree dir=../<cr>", desc = "[T]ree move [U]p" },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
  },
}