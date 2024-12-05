return {
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', 
  },
  config = function()
    local dap = require('dap')
    require('flutter-tools').setup {
      outline = {
        open_cmd = "0vw",
        auto_open = false
      },
      dev_log = {
        enabled= false
      },
      debugger = {
        enabled = true,
        run_via_dap = true,
        register_configurations = function(_)
          -- dap.adapters.dart = {
          --   type = "executable",
          --   command = "dart",
          --   args = { "debug_adapter" },
          -- }
          --
          -- dap.adapters.flutter = {
          --   type = "executable",
          --   command = "flutter",
          --   args = { "debug_adapter" },
          -- }
          require("dap").configurations.dart = {}
          require("dap.ext.vscode").load_launchjs() 

        end,
      },
    }
    vim.keymap.set('n', '<leader>r', require('telescope').extensions.flutter.commands, { desc = 'Open command Flutter' })
  end,
}
