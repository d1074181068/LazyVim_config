return {
  "zbirenbaum/copilot-cmp",
  after = { "copilot.lua" }, -- 確保在 copilot.lua 後加載
  config = function()
    require("copilot_cmp").setup({
      method = "getCompletionsCycling",
      formatters = {
        label = require("copilot_cmp.format").format_label_text,
        insert_text = require("copilot_cmp.format").format_insert_text,
        preview = require("copilot_cmp.format").deindent,
      },
    })
  end,
}
