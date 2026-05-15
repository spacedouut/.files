return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local map = function(mode, l, r)
          vim.keymap.set(mode, l, r, { buffer = bufnr })
        end

        map("n", "]h", gs.next_hunk)     -- next git change
        map("n", "[h", gs.prev_hunk)     -- prev git change
        map("n", "<leader>hs", gs.stage_hunk)
        map("n", "<leader>hr", gs.reset_hunk)
        map("n", "<leader>hb", gs.blame_line)
      end
    })
  end,
}
