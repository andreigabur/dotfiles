return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  config = function () 
    require("nvim-treesitter").setup({
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