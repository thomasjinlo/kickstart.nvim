-- Custom LSP servers, registered after the built-in servers in init.lua.
-- init.lua already adds nvim-lspconfig, so these just declare + enable.
--
-- Mason's auto-install list is computed in init.lua before this file runs,
-- so install the binaries manually once:
--   :MasonInstall gopls rust-analyzer

vim.lsp.config('gopls', {
  settings = {
    gopls = {
      gofumpt = true,
      staticcheck = true,
      analyses = {
        unusedparams = true,
        shadow = true,
      },
    },
  },
})

vim.lsp.config('rust_analyzer', {
  settings = {
    ['rust-analyzer'] = {
      cargo = {
        allFeatures = true,
        buildScripts = true,
      },
      checkOnSave = true,
      check = {
        command = 'clippy',
      },
      procMacro = {
        enable = true,
      },
    },
  },
})

vim.lsp.enable('gopls')
vim.lsp.enable('rust_analyzer')
