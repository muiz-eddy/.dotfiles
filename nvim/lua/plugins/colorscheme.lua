-- return {
-- 	"ellisonleao/gruvbox.nvim", 
-- 	lazy = false,
-- 	priority = 1000, 
--
-- 	config = function()
--     require("gruvbox").setup({
--             terminal_colors = true, -- add neovim terminal colors
--             undercurl = true,
--             underline = true,
--             bold = true,
--             italic = {
--                 strings = true,
--                 emphasis = true,
--                 comments = true,
--                 operators = false,
--                 folds = true,
--             },
--             strikethrough = true,
--             invert_selection = false,
--             invert_signs = false,
--             invert_tabline = false,
--             invert_intend_guides = false,
--             inverse = true, -- invert background for search, diffs, statuslines and errors
--             contrast = "hard", -- can be "hard", "soft" or empty string for default contrast
--             palette_overrides = {},
--             overrides = {},
--             dim_inactive = false,
--             transparent_mode = true,
--         })
--
-- 		vim.o.background = "dark" -- or "light" for light mode
-- 		vim.cmd([[colorscheme gruvbox]])
-- 	end,
-- }
--
-- return {
-- 		"arturgoms/moonbow.nvim",
--     config = function()
--       vim.cmd([[colorscheme moonbow]])
--     end,
-- }

return {
  'Shatur/neovim-ayu',
  config = function()
    require('ayu').setup({
      mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
      overrides = {

      }, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
    })
    vim.cmd([[colorscheme ayu]])
  end,
}
-- return {
--   "catppuccin/nvim", 
--   name = "catppuccin",
--   priority = 1000,
--   lazy = false,
--   config = function()
--     require("catppuccin").setup({
--       transparent_background = true,
--       -- other configuration options
--     })
--     vim.cmd([[colorscheme catppuccin]])
--   end,
-- }
