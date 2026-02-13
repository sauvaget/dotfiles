-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- -- ~/.config/nvim/lua/config/keymaps.lua

local map = vim.keymap.set

-- Quick Save
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save File" })

-- Go: Add error handling (The "If err != nil" helper)
map("n", "<leader>ge", "oif err != nil {<CR>return err<CR>}<ESC>O", { desc = "Add if err" })

-- Go: Run tests for the current function
map("n", "<leader>gt", "<cmd>lua require('neotest').run.run()<cr>", { desc = "Run Test" })

-- Go: Run the whole project
map("n", "<leader>gr", "<cmd>TermExec cmd='go run .'<cr>", { desc = "Go Run" })
