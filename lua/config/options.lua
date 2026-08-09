-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.relativenumber = false
opt.swapfile = false

-- Spell check configuration: Enable English spell check, ignore non-ASCII (Thai) & CamelCase
opt.spell = true
opt.spelllang = { "en", "cjk" }
opt.spelloptions:append("camel")

-- Disable inlay hints globally in LazyVim
vim.g.lazyvim_inlay_hints = { enabled = false }
