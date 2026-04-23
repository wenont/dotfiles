return {

  {
    "mason-org/mason.nvim",
    opts = {},
  },

  -- formatting for lua
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = {
          -- To fix auto-fixable lint errors.
          "ruff_fix",
          -- To run the Ruff formatter.
          "ruff_format",
          -- To organize the imports.
          "ruff_organize_imports",
        },
      },
      format_on_save = {
        timeout_ms = 3000,
        lsp_format = "fallback",
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      vim.lsp.config("lua_ls", {
        cmd = { "lua-language-server" },
        filetypes = { "lua" },
        root_markers = { { ".luarc.json", ".luarc.jsonc" }, ".git" },
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
          },
        },
      })

      -- Optional: Only required if you need to update the language server settings
      vim.lsp.config("ty", {
        settings = {
          ty = {
            -- ty language server settings go here
          },
        },
      })

      -- Required: Enable the language server
      vim.lsp.enable("ty")

      vim.lsp.enable("lua_ls")
    end,
  },
}
