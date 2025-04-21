vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Make line numbers default
opt.number = true
opt.relativenumber = true

-- Tabs & indentation
opt.tabstop = 2 -- spaces for tabs
opt.shiftwidth = 2 -- size of an indent
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line to new line

-- Sync clipboard between OS and Neovim.
opt.clipboard:append("unnamedplus")

-- Case-insensitive searching
opt.ignorecase = true -- ignore case
opt.smartcase = true -- assume case-sensitive when mixed case used

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Show which line your cursor is on
opt.cursorline = true

-- [[ Keymaps ]]

-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = ' '