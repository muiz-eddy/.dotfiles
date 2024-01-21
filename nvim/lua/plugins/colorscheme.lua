-- return {
-- 	"ellisonleao/gruvbox.nvim", 
-- 	lazy = false,
-- 	priority = 1000, 
-- 	config = function()
-- 		vim.o.background = "dark" -- or "light" for light mode
-- 		vim.cmd([[colorscheme gruvbox]])
-- 	end,
-- }

return {
  "catppuccin/nvim", 
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    vim.cmd([[colorscheme catppuccin]])
  end,
}
