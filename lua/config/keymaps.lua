-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local wk = require("which-key")

wk.register({
  o = {
    name = "obsidian",
    s = { "<cmd>ObsidianSearch<cr>", "search" },
    n = { "<cmd>ObsidianNew<cr>", "new note" },
    t = { "<cmd>ObsidianTags<cr>", "search tags" },
    b = { "<cmd>ObsidianBacklinks<cr>", "list backlinks to current" },
    f = { "<cmd>ObsidianFollowLink<cr>", "follow link under cursor" },
  },
}, { prefix = "<leader>" })
