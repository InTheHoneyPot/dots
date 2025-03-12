return {
  "neanias/everforest-nvim",
  priority = 1000,
  config = function()

  require("everforest").setup({
    background = "soft",
    transparent_background_level = 2,
    italics = true,
    disable_italic_comments = false,
  })
  vim.cmd("colorscheme everforest")
end,
}
