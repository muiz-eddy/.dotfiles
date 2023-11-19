return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        omnisharp = {},
        clangd = {
          cmd = {
            "clangd",
            "--offset-encoding=utf-16",
          },
        },
        -- dartls = {},
        -- yamlls = {},
        -- cssls = {},
        -- cssmodules_ls = {},
        -- tsserver = {},
      },
    },
  },
}
