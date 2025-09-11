return {
  -- vim-pencil for better prose writing
  {
    "preservim/vim-pencil",
    ft = { "markdown", "text" }, -- Only load for markdown and text files
    config = function()
      -- Enable pencil for markdown and text files
      vim.g['pencil#wrapModeDefault'] = 'soft' -- Use soft wrapping by default
      vim.g['pencil#autoformat'] = 1           -- Auto-format paragraphs

      -- Auto-enable pencil for markdown and text files
      vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
        pattern = { "*.md", "*.txt", "*.markdown" },
        callback = function()
          vim.cmd("call pencil#init()")
        end,
      })
    end,
  },
}
