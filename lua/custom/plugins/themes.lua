vim.pack.add {
  { src = 'https://github.com/sainnhe/everforest', name = 'everforest' },
  { src = 'https://github.com/rose-pine/neovim', name = 'rose-pine' },
  { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' },
  { src = 'https://github.com/zenbones-theme/zenbones.nvim', name = 'zenbones' },
}

-- Configure any theme options before activating
vim.o.background = 'light'
vim.g.everforest_background = 'hard'
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

vim.g.zenbones_bold = true
vim.g.zenbones_italic = true
vim.g.zenbones_dim = true
vim.g.forestbones = { lightness = "bright" }
vim.g.rosebones = { lightness = "bright" }

vim.pack.add {
  { src = 'https://github.com/rktjmp/lush.nvim', name = 'lush' },
}

-- Set your active default theme (overrides Kickstart's tokyonight)
-- Other options: 'rosebones' (rose-pine inspired), 'zenbones', 'everforest', 'catppuccin'
vim.cmd.colorscheme 'forestbones'

-- Toggle light/dark: flips the `background` option, then re-applies the
-- active colorscheme so it re-renders with the new background.
vim.g.toggle_bg = function()
  local cs = vim.fn.execute('silent colorscheme', true):match('%S+')
  vim.o.background = vim.o.background == 'dark' and 'light' or 'dark'
  vim.cmd.colorscheme(cs)
end
vim.cmd.command('ToggleBG', 'lua vim.g.toggle_bg()')
vim.keymap.set('n', '<leader>bb', '<cmd>ToggleBG<cr>', { desc = 'Toggle light/dark mode' })
