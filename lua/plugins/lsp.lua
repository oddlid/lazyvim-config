return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      golangci_lint_ls = {
        mason = false,
        settings = {
          cmd = { "/home/oddee/go/bin/golangci-lint-langserver" },
          filetypes = { "go", "gomod" },
          -- init_options = {
          --   command = { "golangci-lint", "run", "--out-format", "json" },
          -- },
          -- root_dir = require("lspconfig.util").root_pattern(
          --   '.golangci.yml',
          --   '.golangci.yaml',
          --   '.golangci.toml',
          --   '.golangci.json',
          --   'go.work',
          --   'go.mod',
          --   '.git'
          -- ),
        },
      },
    },
  },
}
