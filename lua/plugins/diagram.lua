return {
  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty",
      processor = "magick_cli",
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { "markdown", "vimwiki" },
        },
      },
      max_width = 160,
      max_height = 80,
      max_height_window_percentage = 80,
      max_width_window_percentage = 100,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
  },
  {
    "3rd/diagram.nvim",
    dependencies = {
      "3rd/image.nvim",
    },
    opts = {
      renderer_options = {
        mermaid = {
          background = "transparent",
          theme = "dark",
          scale = 3,
          width = 1600,
        },
      },
    },
  },
}
