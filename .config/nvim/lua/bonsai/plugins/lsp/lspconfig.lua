return {
  "neovim/nvim-lspconfig",
  ft = { "rust", "lua", "python", "c", "cpp" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    -- Ensure signcolumn is visible
    vim.opt.signcolumn = "yes"

    -- Set up completion capabilities
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- Common on_attach function
    local on_attach = function(client, bufnr)
      print("LSP attached: " .. client.name) -- Debug line
      local opts = { noremap = true, silent = true, buffer = bufnr }

      -- Keymaps
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)

      -- Format on save
      if client.supports_method("textDocument/formatting") then
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ bufnr = bufnr })
          end,
        })
      end
    end

    -- Configure diagnostic signs
    local signs = {
      { name = "DiagnosticSignError", text = " " },
      { name = "DiagnosticSignWarn",  text = " " },
      { name = "DiagnosticSignHint",  text = " " },
      { name = "DiagnosticSignInfo",  text = " " },
    }

    for _, sign in ipairs(signs) do
      vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
    end

    -- Diagnostic configuration
    vim.diagnostic.config({
      underline = true,
      update_in_insert = false,
      virtual_text = {
        spacing = 4,
        prefix = '●',
      },
      severity_sort = true,
      float = {
        source = "always",
        border = "rounded",
      },
      signs = true,
    })

    -- Configure rust_analyzer
    vim.lsp.config('rust_analyzer', {
      cmd = { 'rust-analyzer' },
      filetypes = { 'rust' },
      root_markers = { 'Cargo.toml' },
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        ['rust-analyzer'] = {
          checkOnSave = {
            enable = true,
            command = "check", -- "clippy", Use clippy for more comprehensive checks
          },
          diagnostics = {
            enable = true,
            experimental = {
              enable = true,
            },
          },
          cargo = {
            allFeatures = true,
            loadOutDirsFromCheck = true,
          },
          procMacro = {
            enable = true,
          },
        },
      },
    })

    -- Configure lua_ls
    vim.lsp.config('lua_ls', {
      cmd = { 'lua-language-server' },
      filetypes = { 'lua' },
      root_markers = { '.luarc.json', '.luarc.jsonc', '.luacheckrc', '.stylua.toml',
        'stylua.toml', 'selene.toml', 'selene.yml', '.git' },
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
        },
      },
    })

    -- Configure clangd
    vim.lsp.config('clangd', {
      cmd = { 'clangd' },
      filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda', 'proto' },
      root_markers = { '.clangd', '.clang-tidy', '.clang-format',
        'compile_commands.json', 'compile_flags.txt',
        'configure.ac', '.git' },
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- Configure pyright
    vim.lsp.config('pyright', {
      cmd = { 'pyright-langserver', '--stdio' },
      filetypes = { 'python' },
      root_markers = { 'pyproject.toml', 'setup.py', 'setup.cfg',
        'requirements.txt', 'Pipfile', 'pyrightconfig.json', '.git' },
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- Enable the servers
    vim.lsp.enable('rust_analyzer')
    vim.lsp.enable('lua_ls')
    vim.lsp.enable('clangd')
    vim.lsp.enable('pyright')
  end,
}
