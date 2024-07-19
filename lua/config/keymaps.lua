-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local wk = require("which-key")

local function visual_cursors_with_delay()
  -- Execute the vm-visual-cursors command.
  vim.cmd('silent! execute "normal! \\<Plug>(VM-Visual-Cursors)"')
  -- Introduce delay via VimScript's 'sleep' (set to 500 milliseconds here).
  vim.cmd("sleep 200m")
  -- Press 'A' in normal mode after the delay.
  vim.cmd('silent! execute "normal! A"')
end

wk.register({
  m = {
    name = "Visual Multi",
    a = { "<Plug>(VM-Select-All)<Tab>", "Select All", mode = { "n" } },
    r = { "<Plug>(VM-Start-Regex-Search)", "Start Regex Search", mode = { "n" } },
    p = { "<Plug>(VM-Add-Cursor-At-Pos)", "Add Cursor At Pos", mode = { "n", "v" } },
    v = { visual_cursors_with_delay, "Visual Cursors", mode = { "v" } },
    o = { "<Plug>(VM-Toggle-Mappings)", "Toggle Mapping", mode = { "n" } },
  },
  ["<C-v>"] = { "<Esc>v", "Visual Mode" },
}, { prefix = "<leader>" })
