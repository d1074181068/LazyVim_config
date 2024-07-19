return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "tanvirtin/monokai.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "Mofiqul/vscode.nvim" },
  { "rose-pine/neovim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
