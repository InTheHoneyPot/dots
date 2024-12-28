local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then return end

ts.setup {
  modules = {},         -- Required but can remain empty unless you need custom modules
  sync_install = false, -- Install parsers synchronously (false for async)
  auto_install = true,  -- Automatically install missing parsers when entering a buffer
  ignore_install = {},  -- List of parsers to ignore installing
  highlight = {
    enable = true,      -- Enable Treesitter highlighting
    disable = {},       -- Disable for specific languages if needed
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true, -- Enable smart indentation
    disable = {},  -- Disable for certain languages if needed
  },
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
}
