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
    local builtin = require 'telescope.builtin'
    
    keymap.set("n", "<leader>s", "", {desc = "[S]earch ..."})
    keymap.set('n', '<leader>sh', "<cmd>Telescope help_tags<cr>", { desc = '[S]earch [H]elp' })
    keymap.set('n', '<leader>sk', "<cmd>Telescope keymaps<cr>", { desc = '[S]earch [K]eymaps' })
    keymap.set("n", "<leader>sf", "<cmd>Telescope find_files hidden=true<cr>", {desc = "[S]earch [F]iles"})
    keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep vimgrep_arguments=rg,--hidden,--column,--smart-case<cr>", {desc = "[S]earch by [G]rep"})
  end
}
