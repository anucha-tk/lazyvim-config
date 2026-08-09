return {
  -- =================================================================
  -- 1. Catppuccin (Official Config)
  -- =================================================================
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "auto", -- "auto", "latte", "frappe", "macchiato", "mocha"
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      show_end_of_buffer = false,
      term_colors = true,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
      no_italic = false,
      no_bold = false,
      no_underline = false,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {},
      custom_highlights = {},
      auto_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        snacks = true,
      },
    },
  },

  -- =================================================================
  -- 2. TokyoNight (Official Config)
  -- =================================================================
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm", -- "storm", "moon", "night", "day"
      light_style = "day",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },
    },
  },

  -- =================================================================
  -- 3. Kanagawa (Official Config)
  -- =================================================================
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      theme = "wave", -- "wave", "dragon", "lotus"
      background = {
        dark = "wave", -- "wave", "dragon"
        light = "lotus",
      },
    },
  },

  -- =================================================================
  -- 4. Rose-Pine (Official Config)
  -- =================================================================
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "auto", -- "auto", "main", "moon", "dawn"
      dark_variant = "main", -- "main", "moon"
      dim_inactive_windows = false,
      extend_background_behind_borders = true,
      styles = {
        bold = true,
        italic = true,
        transparency = false,
      },
    },
  },

  -- =================================================================
  -- LazyVim Colorscheme Switcher (เปลี่ยนชื่อธีมที่ต้องการตรงนี้)
  -- =================================================================
  {
    "LazyVim/LazyVim",
    opts = {
      -- 🎨 CATPPUCCIN Flavours: "catppuccin" (auto), "catppuccin-latte" (light), "catppuccin-mocha", "catppuccin-macchiato", "catppuccin-frappe"
      -- colorscheme = "catppuccin",

      -- 🎨 TOKYONIGHT Styles: "tokyonight", "tokyonight-storm", "tokyonight-night", "tokyonight-moon", "tokyonight-day"
      -- colorscheme = "tokyonight",

      -- 🎨 KANAGAWA Themes: "kanagawa", "kanagawa-wave", "kanagawa-dragon", "kanagawa-lotus"
      colorscheme = "kanagawa",

      -- 🎨 ROSE-PINE Variants: "rose-pine", "rose-pine-main", "rose-pine-moon", "rose-pine-dawn"
      -- colorscheme = "rose-pine",
    },
  },
}
