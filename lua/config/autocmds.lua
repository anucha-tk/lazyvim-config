-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

-- Disable LazyVim's default spell check wrap group safely
pcall(vim.api.nvim_del_augroup_by_name, "lazyvim_wrap_spell")

-- Enable English spell check while completely ignoring Thai (non-ASCII) text
vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
  pattern = { "markdown", "text", "plaintex", "gitcommit" },
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = { "en", "cjk" }
    vim.opt_local.spelloptions:append("camel")
    vim.cmd([[syntax match NoSpellNonAscii /[^\x00-\x7F]\+/ contains=@NoSpell]])
  end,
})
