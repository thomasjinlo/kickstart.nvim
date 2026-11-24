return {
	{
		'sainnhe/everforest',
		priority = 999,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.everforest_enable_italic = true
			vim.cmd.colorscheme('everforest')
			end
	},
	-- lua/plugins/rose-pine.lua
	{
		"rose-pine/neovim",
		priority = 998,
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
			end
	}
}
