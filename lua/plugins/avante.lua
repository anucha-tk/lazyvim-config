return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false,
  build = "make",
  opts = {
    provider = "copilot", -- สลับมาใช้ copilot เป็นหลัก
    auto_suggestions_provider = "copilot",

    input = {
      provider = "dressing",
    },

    providers = {
      copilot = {
        endpoint = "https://api.githubcopilot.com",
        -- คุณสามารถเลือก model ได้: "gpt-4o" หรือ "claude-3.5-sonnet" (แนะนำตัวนี้)
        model = "claude-3.5-sonnet",
        proxy = nil,
        allow_insecure = false,
        timeout = 30000,
        extra_request_body = {
          -- พารามิเตอร์สำหรับ copilot
          temperature = 0,
          max_tokens = 4096,
        },
      },
      deepseek = {
        __inherited_from = "openai",
        endpoint = "https://api.deepseek.com",
        model = "deepseek-chat",
        api_key_name = "DEEPSEEK_API_KEY",
        timeout = 30000,
        extra_request_body = {
          temperature = 0,
          max_tokens = 8192,
        },
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "stevearc/dressing.nvim",
    "nvim-tree/nvim-web-devicons",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = { file_types = { "markdown", "Avante" } },
      ft = { "markdown", "Avante" },
    },
  },
}
