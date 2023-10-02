return {
  {
    "ray-x/go.nvim",
    enabled = true,
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup({
        lsp_cfg = true,      -- false: do nothing
        lsp_gofumpt = true,  -- true: set default gofmt in gopls format to gofumpt
        lsp_keymaps = false, -- set to false to disable gopls/lsp keymap
        lsp_inlay_hints = {
          enable = false,
        },
        diagnostic = {
          underline = false,
        },
        gopls_cmd = { "/Users/oddee/gopath/bin/gopls" }, -- if you need to specify gopls path and cmd, e.g {"/home/user/lsp/gopls", "-logfile","/var/log/gopls.log" }
        gopls_remote_auto = true,                        -- add -remote=auto to gopls
        null_ls_document_formatting_disable = true,      -- true: disable null-ls formatting
        dap_debug = false,                               -- set to false to disable dap
        dap_debug_keymap = false,                        -- true: use keymap for debugger defined in go/dap.lua, false: do not use keymap in go/dap.lua.  you must define your own.
        dap_debug_gui = false,                           -- set to true to enable dap gui, highly recommended
        floaterm = {
          posititon = "bottom",                          -- one of {`top`, `bottom`, `left`, `right`, `center`, `auto`}
          width = 1.00,                                  -- width of float window if not auto
          height = 0.50,                                 -- height of float window if not auto
        },
        luasnip = true,
        trouble = true,
      })
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
  },
}
