-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local harpoon = require("harpoon")

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
  a = {
    function()
      harpoon:list():append()
    end,
    "harpoon append",
  },
}, { prefix = "<leader>" })

vim.keymap.set("n", "<A-m>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<A-j>", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<A-k>", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<A-l>", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<M-h>", function()
  harpoon:list():select(4)
end)
