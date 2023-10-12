-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map Ctrl+Backspace to delete word backwards
-- Note: for this to work with neovim in a windows terminal add the following
-- code to your `settings.json` under "actions"
-- {
--           "command": {
--               "action": "sendInput",
--               "input": "\u0017"
--           },
--           "keys": "ctrl+backspace"
--       }
vim.api.nvim_set_keymap("i", "<C-BS>", "<C-w>", { noremap = true, silent = true })
