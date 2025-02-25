local status, saga = pcall(require, "lspsaga")
if not status then return end

saga.setup({
  lightbulb = {
    enable = true,
    sign = true,
  },
  code_action = {
    extend_gitsigns = true,
  },
})

local lspconfig = require('lspconfig')

-- Configure clangd for C++
lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    -- Lspsaga keymaps for C++
    local opts = { buffer = bufnr, noremap = true, silent = true }
    vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
    vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
    vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
    vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
    vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
    vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
  end,
}

-- Configure rust-analyzer for Rust
lspconfig.rust_analyzer.setup {
  on_attach = function(client, bufnr)
    -- Lspsaga keymaps for Rust
    local opts = { buffer = bufnr, noremap = true, silent = true }
    vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
    vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
    vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
    vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
    vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
    vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
  end,
}
