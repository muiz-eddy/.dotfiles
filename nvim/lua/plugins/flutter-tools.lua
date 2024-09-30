return {
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  config = function()
    require('flutter-tools').setup {
      debugger = {
        enabled = false,
        run_via_dap = false,
        register_configurations = function(_)
          require("dap").configurations.dart = {
            {
              type = "dart",
              request = "launch",
              name = "Launch dart",
              dartSdkPath = "/Users/muiz_eddy/development/flutter/bin/cache/dart-sdk", -- Replace with actual path
              flutterSdkPath = "/Users/muiz_eddy/development/flutter", -- Replace with actual path
              program = "${workspaceFolder}/lib/main_development.dart",
              cwd = vim.fn.getcwd(), -- Can also use vim.fn.getcwd() if workspaceFolder isn't set
            }
          }
          require("dap.ext.vscode").load_launchjs() -- Ensure this is correctly positioned
        end,
      },
    }
  end,
}
