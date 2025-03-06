return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local telescope = require("telescope")
      local action = require("telescope.actions")
  
      telescope.load_extension("fzf")
  
      local keymap = vim.keymap
  
      keymap.set("n", "<leader>f", "", {desc = "Fuzzy ..."})
      keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {desc = "Fuzzy find files"})
      keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", {desc = "Find string"})
    end
  }
