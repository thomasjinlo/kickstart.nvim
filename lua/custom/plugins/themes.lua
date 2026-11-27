vim.pack.add {
  { src = 'https://github.com/sainnhe/everforest', name = 'everforest' },
  { src = 'https://github.com/rose-pine/neovim', name = 'rose-pine' },
  { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' },
}

-- Configure any theme options before activating
vim.o.background = 'light'
vim.g.everforest_background = 'medium'
vim.g.everforest_enable_italic = true

require('rose-pine').setup {
  variant = 'moon',
}

require('catppuccin').setup {
  flavour = 'auto', -- latte, frappe, macchiato, mocha
  background = {
    light = 'latte',
    dark = 'mocha',
  },
  transparent_background = false,
  integrations = {
    native_lsp = { enabled = true },
    gitsigns = true,
    telescope = true,
  },
}

-- Set your active default theme (overrides Kickstart's tokyonight)
vim.cmd.colorscheme 'rose-pine'
