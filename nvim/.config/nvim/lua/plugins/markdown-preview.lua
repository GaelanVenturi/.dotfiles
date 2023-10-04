-- From https://github.com/cmaccarp/nvim-config/blob/main/lua/plugins/markdown-preview.lua
return {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = ":call mkdp#util#install ()",
    -- config = function()
    --   vim.fn["mkdp#util#install"]()
    -- end,
  },
}
