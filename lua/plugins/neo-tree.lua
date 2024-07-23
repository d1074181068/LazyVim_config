return {
  -- 其他插件
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- 可选, 需要图标插件
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        default_component_configs = {
          git_status = {
            symbols = {
              -- Change type
              added = "", -- NOTE: you can set any of these to an empty string to not show them
              deleted = "󰧧",
              modified = "",
              renamed = "󰫿",
              -- Status type
              untracked = "",
              ignored = "",
              unstaged = "󰄱",
              staged = "",
              conflict = "",
            },
            align = "right",
          },
        },
        close_if_last_window = true, -- 如果这是最后一个窗口则关闭 Neo-tree
        popup_border_style = "rounded", -- 设置弹出窗口的边框样式
        enable_git_status = true,
        enable_diagnostics = true,
        window = {
          position = "left",
          width = 30,
          mappings = {
            ["o"] = "toggle_node",
            ["<space>"] = "none",
            ["<cr>"] = "open",
            ["S"] = "split_with_window_picker",
            ["s"] = "vsplit_with_window_picker",
            ["t"] = "open_tabnew",
            ["C"] = "close_node",
            ["R"] = "refresh",
            ["a"] = {
              "add",
              config = {
                show_path = "relative", -- "none", "relative", "absolute"
              },
            },
            ["d"] = "delete",
            ["r"] = "rename",
            ["y"] = "copy_to_clipboard",
            ["x"] = "cut_to_clipboard",
            ["p"] = "paste_from_clipboard",
            ["c"] = "copy",
            ["m"] = {
              "move",
              config = {
                show_path = "relative",
              },
            },
            ["q"] = "close_window",
            ["?"] = "show_help",
          },
        },
        filesystem = {
          filtered_items = {
            visible = true, -- 显示隐藏文件
            hide_dotfiles = false,
            hide_gitignored = true,
            hide_by_name = {
              ".DS_Store",
              "thumbs.db",
            },
            never_show = { -- 永远不显示的文件
              ".DS_Store",
              "thumbs.db",
            },
          },
          follow_current_file = {
            enabbled = true,
          }, -- 自动展开当前文件所在目录
          hijack_netrw_behavior = "open_default", -- 覆盖 netrw 行为
          use_libuv_file_watcher = true, -- 使用 libuv 文件监视器
        },
        buffers = {
          show_unloaded = true,
        },
        git_status = {},
      })

      -- 绑定键位，方便打开 Neo-tree
      vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
    end,
  },
}
