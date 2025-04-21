return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
        "bash",
        "c",
        "diff",
        "go",
        "html", 
        "java", 
        "javascript", 
        "lua", 
        "python",
        "query",
        "typescript",
        "vim", 
        "xml",
        "yaml", 
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}