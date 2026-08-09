return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        replace_netrw = true,
      },
      picker = {
        hidden = true, -- Show hidden files (.files, .config, etc.)
        ignored = true, -- Show gitignored files by default
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
          },
          files = {
            hidden = true,
            ignored = true,
          },
        },
        win = {
          input = {
            keys = {
              ["<Tab>"] = { "list_down", mode = { "i", "n" } },
              ["<S-Tab>"] = { "list_up", mode = { "i", "n" } },
            },
          },
          list = {
            keys = {
              ["<Tab>"] = "list_down",
              ["<S-Tab>"] = "list_up",
            },
          },
        },
      },
    },
  },
}
