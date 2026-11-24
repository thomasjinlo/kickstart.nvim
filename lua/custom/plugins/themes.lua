vim.pack.add {
  { src = 'https://github.com/sainnhe/everforest', name = 'everforest' },
  { src = 'https://github.com/rose-pine/neovim', name = 'rose-pine' },
}

-- 2. Configure any theme options before activating
vim.o.background = 'light'
vim.g.everforest_background = 'medium'
vim.g.everforest_enable_italic = true

require('rose-pine').setup {
  variant = 'moon',
}

-- 3. Set your active default theme (overrides Kickstart's tokyonight)
vim.cmd.colorscheme 'rose-pine'
