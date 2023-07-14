vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move Chunks of selected code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- J move with Cursor in the same place
vim.keymap.set("n", "J", "mzJ`z")

-- Half Page Jumps with cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search keps cursor centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Preserves Copy buffer when pasting over
vim.keymap.set("x", "<leader>p", "\"_dp")
vim.keymap.set("n", "<leader>d", "\"_d") -- Normal
vim.keymap.set("v", "<leader>d", "\"_d") -- Visual

-- Quick Fix Navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Quick Save
vim.keymap.set("n", "<leader>w", ":update<cr>")
vim.keymap.set("i", "<C-s>", "<Esc>:update<cr>")
