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
  { "nvim-orgmode/orgmode", config = function()
    require('orgmode').setup {}
  end
  },
  'akinsho/org-bullets.nvim',

  -- Colorschemes
  'ellisonleao/gruvbox.nvim'.
  'AlphaTechnolog/pywal.nvim',
  'shaunsingh/moonlight.nvim',
  'Tsuzat/NeoSolarized.nvim',
  'nvim-lualine/lualine.nvim', -- Statusline
  'nvim-lua/plenary.nvim', -- Common utilities
  'onsails/lspkind-nvim', -- vscode-like pictograms
  'hrsh7th/cmp-buffer', -- nvim-cmp source for buffer words
  'hrsh7th/cmp-nvim-lsp', -- nvim-cmp source for neovim's built-in LSP
  'hrsh7th/nvim-cmp', -- Completion
  'neovim/nvim-lspconfig', -- LSP
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
  'windwp/nvim-ts-autotag',
  'norcalli/nvim-colorizer.lua',
  ({
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  }),
  'akinsho/nvim-bufferline.lua',
  -- use 'github/copilot.vim'
  "akinsho/toggleterm.nvim",
  'lewis6991/gitsigns.nvim',
  'dinhhuy258/git.nvim', -- For git blame & browse
  { 'nvim-tree/nvim-tree.lua', dependencies = { 'nvim-tree/nvim-web-devicons' } }
})
