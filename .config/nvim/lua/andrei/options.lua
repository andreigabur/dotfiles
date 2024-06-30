vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- spaces for tabs
opt.shiftwidth = 2 -- size of an indent
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line to new line

-- search
opt.ignorecase = true -- ignore case
opt.smartcase = true -- assume case-sensitive when mixed case used

opt.cursorline = true

--clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default

--split windows
opt.splitright = true
opt.splitbelow = true
