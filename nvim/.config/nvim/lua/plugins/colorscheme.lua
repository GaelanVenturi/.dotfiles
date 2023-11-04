return {
  {
    "catppuccin/nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    name = "catppuccin",
  },
  {
    "LazyVim/LazyVim",
    opts = {

      colorscheme = "catppuccin-mocha",
    },
  },
}
