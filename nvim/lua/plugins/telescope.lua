
return {
	'nvim-telescope/telescope.nvim', tag = '0.1.4',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		local map = vim.keymap
		vim.keymap.set('n', '<leader>fp', builtin.find_files, {})
		vim.keymap.set('n', '<leader>gf', builtin.git_files, {}) -- Doesn't actually work --
		vim.keymap.set('n', '<leader>ps', function() builtin.grep_string({search = vim.fn.input("Grep > ")}) end)
	end
}
