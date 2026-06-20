return {
  "nvim-telescope/telescope.nvim",
  branch = "master",
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
    
    keymap.set("n", "<leader>f", "", {desc = "[F]ind ..."})
    keymap.set('n', '<leader>fh', "<cmd>Telescope help_tags<cr>", { desc = '[F]ind [H]elp' })
    keymap.set('n', '<leader>fk', "<cmd>Telescope keymaps<cr>", { desc = '[F]ind [K]eymaps' })
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", {desc = "[F]ind [F]iles"})
    keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep vimgrep_arguments=rg,--hidden,--column,--smart-case<cr>", {desc = "[F]ind by [G]rep"})
  end
}
