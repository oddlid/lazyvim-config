return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      golangci_lint_ls = {
        mason = false,
        settings = {
          cmd = { "/home/oddee/.local/go/bin/golangci-lint-langserver" },
          filetypes = { "go", "gomod" },
        },
      },
    },
  },
}
