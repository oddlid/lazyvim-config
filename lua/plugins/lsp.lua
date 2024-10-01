return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    setup = {
      rust_analyser = function()
        return true
      end,
    },
    servers = {
      gopls = {
        mason = false,
        settings = {
          cmd = { "/Users/oddee/gopath/bin/gopls", "-remote=auto" },
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
        },
      },
      golangci_lint_ls = {
        mason = false,
        settings = {
          cmd = { "/Users/oddee/gopath/bin/golangci-lint-langserver" },
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
