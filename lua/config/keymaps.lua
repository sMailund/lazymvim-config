-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local wk = require("which-key")

wk.register({
  o = {
    name = "obsidian", -- optional group name
    s = { "<cmd>ObsidianSearch<cr>", "search" }, -- create a binding with label
  },
}, { prefix = "<leader>" })
