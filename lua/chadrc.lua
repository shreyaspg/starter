-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "gruvchad",
  statusline = {
    theme = "vscode",
    order = { "mode", "cwd", "file", "git", "%=", "diagnostics", "lsp", "lsp_msg", "cursor" },
  },
  tabufline = {
    order = { "treeOffset", "buffers", "tabs" },
  },
}

return M
