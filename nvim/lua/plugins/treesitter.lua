return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	event = "VeryLazy",
	config = function()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = {
				'lua',
				'php',
				'cpp',
				'html',
				'css',
			},
			sync_install = false,
			highlight = { enable = true, },
			indent = {enable = true, }
		}
	end
}
