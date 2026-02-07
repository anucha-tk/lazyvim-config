return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
  config = true,
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "DiffView Open" },
    { "<leader>gc", "<cmd>DiffviewClose<cr>", desc = "DiffView Close" },
  },
}
