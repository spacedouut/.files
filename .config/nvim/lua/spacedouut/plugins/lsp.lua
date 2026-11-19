return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = "williamboman/mason.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright" },  -- Python LSP
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Attach keybinds when LSP connects to a buffer
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(e)
          local map = function(keys, func)
            vim.keymap.set("n", keys, func, { buffer = e.buf })
          end

          map("gd", vim.lsp.buf.definition)       -- go to definition
          map("gr", vim.lsp.buf.references)        -- find references
          map("K", vim.lsp.buf.hover)              -- hover docs
          map("<leader>rn", vim.lsp.buf.rename)    -- rename symbol
          map("<leader>ca", vim.lsp.buf.code_action) -- code actions
          map("[d", vim.diagnostic.goto_prev)
          map("]d", vim.diagnostic.goto_next)
        end,
      })

      vim.lsp.config("pyright", {
        capabilities = require("blink.cmp").get_lsp_capabilities(),
      })
      vim.lsp.enable("pyright")
    end,
  },
}
