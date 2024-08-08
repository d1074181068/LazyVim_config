return {
  "zbirenbaum/copilot.lua",
  event = { "VeryLazy", "InsertEnter" }, -- 延遲加載
  config = function()
    require("copilot").setup({
      suggestion = {
        accept = false,
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<Tab>",
          next = "<C-j>",
          prev = "<C-k>",
          dismiss = "<C-h>",
        },
      },
      panel = {
        enabled = true,
        auto_refresh = true,
        keymap = {
          jump_prev = "[[",
          jump_next = "]]",
          accept = "<CR>",
          refresh = "gr",
          open = "<M-CR>",
        },
      },
    })
  end,
}
