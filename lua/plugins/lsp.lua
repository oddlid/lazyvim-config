return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      golangci_lint_ls = {
        enabled = true,
        mason = false,
        settings = {
          cmd = { "/home/eebbodd/go/bin/golangci-lint-langserver" },
          filetypes = { "go", "gomod" },
        },
      },
    },
  },
}
