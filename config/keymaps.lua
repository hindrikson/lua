-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>-", function()
  -- Check if we're in a tmux session
  if vim.env.TMUX == nil then
    vim.notify("Not in a tmux session", vim.log.levels.ERROR)
    return
  end
  -- Get the current working directory
  local cwd = vim.fn.getcwd()
  -- Create tmux command to open a new window with yazi
  local tmux_cmd = string.format("tmux new-window -c '%s' -n 'yazi' 'yazi'", cwd)
  -- Execute the command
  local result = vim.fn.system(tmux_cmd)
  -- Check for errors
  if vim.v.shell_error ~= 0 then
    vim.notify("Failed to open yazi: " .. result, vim.log.levels.ERROR)
  end
end, { desc = "Open Yazi in new tmux window" })

-- next greatest remap ever : asbjornHaland
-- vim.keymap.set("n", "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)
vim.keymap.set("n", "J", "mzJ`z", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "Y", "y$", opts)
