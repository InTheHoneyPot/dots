local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require('lazy').setup({

  -- Colorschemes
  'ellisonleao/gruvbox.nvim',
  'neanias/everforest-nvim',

  -- Plugins
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup {
        options = {
          theme = 'gruvbox', -- Explicitly set lualine to gruvbox
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
        }
      }
    end
  },
  'nvim-lua/plenary.nvim',           -- Common utilities
  'onsails/lspkind-nvim',            -- vscode-like pictograms
  'hrsh7th/cmp-buffer',              -- nvim-cmp source for buffer words
  'hrsh7th/cmp-nvim-lsp',            -- nvim-cmp source for neovim's built-in LSP
  'hrsh7th/nvim-cmp',                -- Completion
  'neovim/nvim-lspconfig',           -- LSP
  'jose-elias-alvarez/null-ls.nvim', -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'goolord/alpha-nvim',
  {
    'nvim-treesitter/nvim-treesitter',
    build = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    }
  },

  'nvim-telescope/telescope.nvim',
  'nvim-telescope/telescope-file-browser.nvim',
  'windwp/nvim-autopairs',
  ({
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  }),
  'akinsho/nvim-bufferline.lua',
  "akinsho/toggleterm.nvim",
  'lewis6991/gitsigns.nvim',
  'dinhhuy258/git.nvim',
})
