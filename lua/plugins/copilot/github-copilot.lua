return {
  "github/copilot.vim",
  event = "VeryLazy", -- 延遲加載
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
    -- 你可以在這裡添加更多配置
  end,
}
