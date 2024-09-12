return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      local nvimtree = require("nvim-tree")
      nvimtree.setup({
        view = {
          width = 40
        }
      })
  
      -- set keymaps
      local keymap = vim.keymap

      keymap.set("n", "<leader>e", "", { desc = "File Explorer..." })
      keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle File Explorer" })
      keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<cr>", { desc = "Toggle File Explorer on current file" })
    end
  }
