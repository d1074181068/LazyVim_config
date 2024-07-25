-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local wk = require("which-key")

-- normal
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- Vim-Visual-Multi keymaps
local function visual_cursors_with_delay()
  -- Execute the vm-visual-cursors command.
  vim.cmd('silent! execute "normal! \\<Plug>(VM-Visual-Cursors)"')
  -- Introduce delay via VimScript's 'sleep' (set to 500 milliseconds here).
  vim.cmd("sleep 200m")
  -- Press 'A' in normal mode after the delay.
  vim.cmd('silent! execute "normal! A"')
end

wk.add({
  { "<leader>m", group = "Visual Multi" },
  { "<leader>ma", "<Plug>(VM-Select-All)<Tab>", desc = "Select All" },
  { "<leader>mo", "<Plug>(VM-Toggle-Mappings)", desc = "Toggle Mapping" },
  { "<leader>mr", "<Plug>(VM-Start-Regex-Search)", desc = "Start Regex Search" },
  { "<leader>mv", visual_cursors_with_delay, desc = "Visual Cursors", mode = "v" },
  { "<leader>mp", "<Plug>(VM-Add-Cursor-At-Pos)", desc = "Add Cursor At Pos", mode = { "n", "v" } },
})
