return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    -- import nvim-autopairs
    local autopairs = require("nvim-autopairs")

  autopairs.setup({
    disable_filetype = { "TelescopePrompt" , "vim" },
  })
end,
}

