return {
  {
    "saghen/blink.cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    version = "*",
    opts = {
      keymap = { preset = "default" },
      sources = {
        default = { "lsp", "path", "buffer", "codeium" },
        providers = {
          codeium = { 
            name = 'Codeium', 
            module = 'codeium.blink', 
            async = true 
          },
        },
      },
      view = {
        entries = "native",
      },
      appearance = {
        nerd_font_variant = "mono",
      },
    },
  },
  {
    "Exafunction/windsurf.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("codeium").setup({
        enable_chat = false,
        enable_cmp_source = false,
        virtual_text = {
          enabled = true,
        },
      })
    end,
  },
}
