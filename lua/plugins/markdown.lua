return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      heading = {
        enabled = true,
        sign = true,
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
        position = "inline",
      },
      code = {
        enabled = true,
        sign = true,
        style = "full",
        left_pad = 1,
        right_pad = 1,
      },
      anti_conceal = {
        enabled = true,
      },
    },
  },
  -- Disable markdownlint diagnostic errors completely in Neovim
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = {},
      },
    },
  },
}
