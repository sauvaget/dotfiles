-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- ~/.config/nvim/lua/config/options.lua

vim.g.mapleader = " "

-- Visuals for Zenbook OLED
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10 -- Keep cursor centered
vim.opt.laststatus = 3 -- Global statusline

-- Go-specific Tabbing
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false -- Go uses real tabs
vim.opt.list = true       -- Show hidden characters (optional)
vim.opt.listchars = "tab:→ ,trail:·"

-- Clipboard (Sync with system)
vim.opt.clipboard = "unnamedplus"
