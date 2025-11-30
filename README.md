Yukon's dotfiles

**Warning**: Don’t blindly use my settings unless you know what that entails. Use at your own risk!

## Contents
- Fish Config
- Fedora Config
- Neovim Config
  - Plugins are managed with Lazy Loading
  
## Shell Setup 

- [Fish Shell](https://fishshell.com/)
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin Manager
- [Tide](https://github.com/IlanCosman/tide) - Shell theme. Use version 5: `fisher install ilancosman/tide@v5`
- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) - Powerline-patched fonts. I use Hack.
- [Z for Fish](https://github.com/jethrokuan/z) - Directory jumping

## Fedora 42 (KDE Plasma) Desktop
- [Fedora KDE Plasma](https://spins.fedoraproject.org/en/kde/)
- [Cava](https://github.com/karlstav/cava) - Audio Visualizer
- [Ghostty](https://github.com/ghostty-org/ghostty) - Terminal
- [Rofi](https://github.com/davatorium/rofi) - Application Launcher
- [NeoFetch](https://github.com/dylanaraps/neofetch)
- [SDDM](https://gitlab.com/Matt.Jolly/sddm-eucalyptus-drop/) - Login Screen
- [Plasma Panel Colorizer](https://github.com/luisbocanegra/plasma-panel-colorizer) - Transparent Panel

## NVIM Setup

### Core
- [Neovim](https://github.com/neovim/neovim) - IDE
- [Lazy](https://github.com/folke/lazy.nvim) - Plugin Manager
- [Plenary](https://github.com/nvim-lua/plenary.nvim) - Asynchronous Programming Module

### LSP & Language Support
- [Lsp-Config](https://github.com/neovim/nvim-lspconfig) - LSP Configuration
- [Mason](https://github.com/williamboman/mason.nvim) - Package Manager for LSP/DAP/Linters/Formatters
- [Mason-Lsp-Config](https://github.com/williamboman/mason-lspconfig.nvim) - Mason + LSP Integration
- [Mason-Tool-Installer](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) - Auto-install Tools
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax Highlighting & Parsing

### Completion & Snippets
- [Cmp](https://github.com/hrsh7th/nvim-cmp) - Completion Engine
- [Cmp-Buffer](https://github.com/hrsh7th/cmp-buffer), [Cmp-Path](https://github.com/hrsh7th/cmp-path), [Cmp-Lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - Completion Sources
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet Engine
- [Cmp-LuaSnip](https://github.com/saadparwaiz1/cmp_luasnip) - Snippet Completion
- [Friendly-Snippets](https://github.com/rafamadriz/friendly-snippets) - Snippet Collection
- [LspKind](https://github.com/onsails/lspkind.nvim) - VSCode-style Icons

### File Navigation
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder
- [Telescope-File-Browser](https://github.com/nvim-telescope/telescope-file-browser.nvim) - File Manager

### Markdown
- [Render-Markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim) - In-editor Rendering
- [Markdown-Preview](https://github.com/iamcco/markdown-preview.nvim) - Browser Preview
- [Vim-Pencil](https://github.com/preservim/vim-pencil) - Writing Mode

### UI & Utilities
- [Alpha](https://github.com/goolord/alpha-nvim) - Startup Screen
- [Lualine](https://github.com/nvim-lualine/lualine.nvim) - Statusline
- [Everforest](https://github.com/neanias/everforest-nvim) - Colorscheme
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) - Git Decorations
- [Autopairs](https://github.com/windwp/nvim-autopairs) - Auto-close Brackets/Quotes
