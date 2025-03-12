return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag", -- Auto-close and auto-rename HTML/XML tags
  },

  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      -- List of languages you want Treesitter to always ensure are installed
      ensure_installed = {
        "rust",
        "cpp",
        "python",
        "toml",
        "json",
        "yaml",
        "html",
        "lua",
      },

      sync_install = false,     -- Parsers installed asynchronously
      auto_install = true,      -- Automatically install missing parsers
      ignore_install = {},      -- Parsers you don't want to auto-install

      highlight = {
        enable = true,          -- Enable syntax highlighting
        disable = {},           -- Add languages to disable highlighting
        additional_vim_regex_highlighting = false,
      },

      indent = {
        enable = true,          -- Enable Treesitter-based indentation
        disable = {},           -- Add languages to disable indentation
      },

      autotag = {
        enable = true,          -- Enable automatic tag management (from nvim-ts-autotag)
      },
    })
  end,
}
