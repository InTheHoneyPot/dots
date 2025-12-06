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

    -- Create autocmd for .txt files with blue text
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
      pattern = { "*.txt", "*.md" },
      callback = function()
        -- Using a blue color directly with hex code
        vim.api.nvim_set_hl(0, "Normal",
          {
            -- fg = "#7fbbb3", -- Aqua
            -- fg = "#83c092", -- Bright Green
            fg = "#50b084" -- Vibrant Green
            -- fg = "#8da101" -- Warm Green
            -- fg = "#a7c00" -- Standard Green
          })
      end
    })
  end,
}
