return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "storm",
      transparent = true,
      on_highlights = function(hl, c)
        local ocean = "#5A9E9A"
        hl["@spell"] = { fg = ocean }
        hl["@spell.markdown"] = { fg = ocean }
        hl["@markup"] = { fg = ocean }
        hl["@markup.raw"] = { fg = ocean }
        hl["@markup.raw.markdown_inline"] = { fg = ocean }
        hl["@text.literal"] = { fg = ocean }
        hl["@punctuation.special.markdown"] = { fg = ocean }
      end,
    })
    vim.cmd("colorscheme tokyonight-storm")
  end,
}
