-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<ESC>", { silent = true })
vim.keymap.set("n", "<leader>qq", function()
  Snacks.dashboard()
end, { desc = "Dashboard" })

-- Copy relative path with line number (e.g. backoffice/handler.go#L42 or #L42-L50)
local function copy_path_with_line(is_visual)
  local path = vim.fn.expand("%:.") -- Relative path จาก workspace root
  if path == "" then
    vim.notify("No file open", vim.log.levels.WARN)
    return
  end

  local line_str
  if is_visual then
    local start_line = vim.fn.line("v")
    local end_line = vim.fn.line(".")
    if start_line > end_line then
      start_line, end_line = end_line, start_line
    end
    if start_line == end_line then
      line_str = string.format("#L%d", start_line)
    else
      line_str = string.format("#L%d-L%d", start_line, end_line)
    end
  else
    line_str = string.format("#L%d", vim.fn.line("."))
  end

  local result = path .. line_str
  vim.fn.setreg("+", result) -- Copy ลง system clipboard
  vim.notify("Copied: " .. result, vim.log.levels.INFO)
end

-- Keymaps (<leader>gy -> Git Copy Path)
vim.keymap.set("n", "<leader>gy", function()
  copy_path_with_line(false)
end, { desc = "Copy relative path with line number" })

vim.keymap.set("v", "<leader>gy", function()
  copy_path_with_line(true)
end, { desc = "Copy relative path with line range" })
