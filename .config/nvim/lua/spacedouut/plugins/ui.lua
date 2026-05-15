return {
  {
    "VonHeikemen/fine-cmdline.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
      vim.keymap.set("n", ":", "<cmd>FineCmdline<CR>")
    end,
  },
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "lewis6991/gitsigns.nvim",
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      animation = true,
      tabpages = true,
      clickable = true,
    },
    keys = {
      { "<S-h>",       "<cmd>BufferPrevious<CR>" },
      { "<S-l>",       "<cmd>BufferNext<CR>" },
      { "<leader>bd",  "<cmd>BufferClose<CR>" },
      { "<leader>bp",  "<cmd>BufferPin<CR>" },
      { "<leader>1",   "<cmd>BufferGoto 1<CR>" },
      { "<leader>2",   "<cmd>BufferGoto 2<CR>" },
      { "<leader>3",   "<cmd>BufferGoto 3<CR>" },
      { "<leader>4",   "<cmd>BufferGoto 4<CR>" },
      { "<leader>5",   "<cmd>BufferGoto 5<CR>" },
    },
  },
}
