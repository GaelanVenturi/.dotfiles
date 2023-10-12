-- Used from https://github.com/cmaccarp/nvim-config/blob/main/lua/plugins/rmd.lua
return {
  {
    "vim-pandoc/vim-rmarkdown",
    dependencies = {
      "vim-pandoc/vim-pandoc",
      "vim-pandoc/vim-pandoc-syntax",
    },
  },
}
