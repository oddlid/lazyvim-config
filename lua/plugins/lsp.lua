return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
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
          -- init_options = {
          --   command = {
          --     "/tmp/gopls",
          --     "-remote=auto",
          --   },
          -- },
          -- cmd = {
          --   "/tmp/gopls",
          --   "-remote=auto",
          -- },
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
        },
      },
      -- This doesn't work, since nvim-lspconfig don't have definitions matching.
      -- I'll need undo the effect of vim.list_extend(opts.ensure_installed, { "goimports", "gofumpt", "..." })
      -- done by LazyVim, in some way...
      --
      -- goimports = {
      --   mason = false,
      --   enabled = true,
      --   settings = {
      --     cmd = { "/home/eebbodd/go/bin/goimports" },
      --     filetypes = { "go", "gomod", "gowork", "gotmpl" },
      --   },
      -- },
      -- gofumpt = {
      --   mason = false,
      --   enabled = true,
      --   settings = {
      --     cmd = { "/home/eebbodd/go/bin/gofumpt" },
      --     filetypes = { "go", "gomod", "gowork", "gotmpl" },
      --   },
      -- },
      -- impl = {
      --   mason = false,
      --   enabled = true,
      --   settings = {
      --     cmd = { "/home/eebbodd/go/bin/impl" },
      --     filetypes = { "go", "gomod", "gowork", "gotmpl" },
      --   },
      -- },
      -- gomodifytags = {
      --   mason = false,
      --   enabled = true,
      --   settings = {
      --     cmd = { "/home/eebbodd/go/bin/gomodifytags" },
      --     filetypes = { "go", "gomod", "gowork", "gotmpl" },
      --   },
      -- },
    },
  },
}
