return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			-- Customize or remove this keymap to your liking
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		-- Define formatters
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "prettierd" },
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" },
      html = { "prettierd" },
      json = { "prettierd" },
      css = { "prettierd" },
			php = { "php-cs-fixer" },
		},
		--Set up format-on-save
		format_on_save = { timeout_ms = 500, lsp_fallback = true },
	},
}
