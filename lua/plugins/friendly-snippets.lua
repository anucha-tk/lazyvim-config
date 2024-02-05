return {
  "rafamadriz/friendly-snippets",
  opts = {
    require("luasnip").filetype_extend("typescript", { "javascript" }),
    require("luasnip.loaders.from_vscode").lazy_load({ paths = vim.fn.stdpath("config") .. "/snippets/" }),
  },
}
