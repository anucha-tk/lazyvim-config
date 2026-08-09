-- Custom Header Color (Catppuccin Peach #fab387 / Orange #ff9e64)
vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#fab387", bold = true })

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
      dashboard = {
        preset = {
          header = [[
  █████╗  ████████╗██╗  ██╗
 ██╔══██╗ ╚══██╔══╝██║ ██╔╝
 ███████║    ██║   █████═╝ 
 ██╔══██║    ██║   ██╔═██╗ 
 ██║  ██║    ██║   ██║  ██╗
 ╚═╝  ╚═╝    ╚═╝   ╚═╝  ╚═╝
]],
        },
        sections = {
          { section = "header", hl = "SnacksDashboardHeader" },
          { section = "keys", gap = 1, padding = 1 },
          {
            icon = "󰌌 ",
            title = "Keymaps Cheat Sheet",
            padding = 1,
          },
          {
            text = {
              { "  <leader>gy ", hl = "SnacksDashboardIcon" },
              { " : Copy relative path + line number", hl = "SnacksDashboardDesc" },
              { "\n  <leader>co ", hl = "SnacksDashboardIcon" },
              { " : Open HTML / File in browser", hl = "SnacksDashboardDesc" },
              { "\n  <leader>cp ", hl = "SnacksDashboardIcon" },
              { " : Markdown Live Preview (Mermaid)", hl = "SnacksDashboardDesc" },
              { "\n  :DiffviewOpen ", hl = "SnacksDashboardIcon" },
              { " : Open Git Diffview (:DiffviewClose to quit)", hl = "SnacksDashboardDesc" },
              { "\n  :DiffviewFileHistory % ", hl = "SnacksDashboardIcon" },
              { " : File History Diff (q or :DiffviewClose to close)", hl = "SnacksDashboardDesc" },
            },
            indent = 2,
            padding = 1,
          },
          { section = "startup" },
        },
      },
    },
  },
}
