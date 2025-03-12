return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-file-browser.nvim",
  },

  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local fb_actions = require("telescope").extensions.file_browser.actions

    telescope.setup({
      defaults = {
        mappings = {
          n = {
            ["q"] = actions.close,
          },
        }, -- <-- Fixed missing closing brace here
      },
    
      extensions = {
        file_browser = {
          theme = "dropdown",
          hijack_netrw = true, -- replaces netrw with telescope file browser
          mappings = {
            ["n"] = {
              ["N"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir,
              ["/"] = function()
                vim.cmd("startinsert")
              end,
            },
          },
        },
      },
    }) -- <-- Fixed missing closing parenthesis here

    telescope.load_extension("file_browser")

    -- Keymaps
    local builtin = require("telescope.builtin")
    local function map(mode, key, func, desc)
      vim.keymap.set(mode, key, func, { desc = desc })
    end

    -- Keybindings
    map("n", ";f", function() builtin.find_files() end, "Find Files")
    map("n", ";r", function() builtin.oldfiles() end, "Recent Files")
    map("n", ";t", function() builtin.help_tags() end, "Help Tags")
    map("n", ";;", function() builtin.resume() end, "Resume Telescope")
    map("n", ";e", function() builtin.diagnostics() end, "Diagnostics")
    map("n", ";t", function() builtin.help_tags() end, "Help Tags")

    -- File Browser Shortcut
    map("n", ";b", function()
      telescope.extensions.file_browser.file_browser({
        path = "%:p:h",
        theme = "dropdown",
        cwd = vim.fn.expand("%:p:h"),
        respect_gitignore = false,
        layout_config = { height = 40 },
      })
    end, "File Browser")

    telescope.load_extension("file_browser")
  end,
}
