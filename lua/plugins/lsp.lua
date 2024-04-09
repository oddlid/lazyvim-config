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
      gopls = {
        mason = false,
        enabled = true,
        settings = {
          cmd = { "/home/eebbodd/go/bin/gopls" },
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
        },
      },
      goimports = {
        mason = false,
        enabled = true,
        settings = {
          cmd = { "/home/eebbodd/go/bin/goimports" },
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
        },
      },
      gofumpt = {
        mason = false,
        enabled = true,
        settings = {
          cmd = { "/home/eebbodd/go/bin/gofumpt" },
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
        },
      },
      impl = {
        mason = false,
        enabled = true,
        settings = {
          cmd = { "/home/eebbodd/go/bin/impl" },
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
        },
      },
      gomodifytags = {
        mason = false,
        enabled = true,
        settings = {
          cmd = { "/home/eebbodd/go/bin/gomodifytags" },
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
        },
      },
    },
  },
}
