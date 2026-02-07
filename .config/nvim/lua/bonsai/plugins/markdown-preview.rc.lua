return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function() vim.fn["mkdp#util#install"]() end,
  config = function()
    -- Basic behavior
    vim.g.mkdp_auto_start = 0
    vim.g.mkdp_auto_close = 1
    vim.g.mkdp_refresh_slow = 0
    vim.g.mkdp_command_for_global = 0

    -- Browser and display
    vim.g.mkdp_browser = ""
    vim.g.mkdp_echo_preview_url = 0
    vim.g.mkdp_theme = "dark" -- or "light" - matches your system/editor theme

    -- Page customization
    vim.g.mkdp_page_title = "Preview: ${name}"

    -- Preview window behavior
    vim.g.mkdp_combine_preview = 0 -- Set to 1 to reuse preview window
    vim.g.mkdp_combine_preview_auto_refresh = 1

    -- Rendering options
    vim.g.mkdp_preview_options = {
      mkit = {},
      katex = {},
      uml = {},
      maid = {},
      disable_sync_scroll = 0,
      sync_scroll_type = "middle",
      hide_yaml_meta = 1,
      sequence_diagrams = {},
      flowchart_diagrams = {},
      content_editable = false,
      disable_filename = 0,
      toc = {}
    }

    -- Optional: Custom CSS (uncomment and set path if needed)
    -- vim.g.mkdp_markdown_css = vim.fn.expand("~/path/to/custom.css")
    -- vim.g.mkdp_highlight_css = vim.fn.expand("~/path/to/highlight.css")

    -- Keybinding
    vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Toggle Markdown Preview" })
  end,
}
