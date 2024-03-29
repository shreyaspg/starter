require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- quick writes and close
map("n", "<leader>w", ":w<CR>", { desc = "quick write" })
map("n", "<leader>q", ":q<CR>", { desc = "quick exit" })

-- move block  +/-
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "move block down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "move block up" })

-- use jk to escape
map("t", "jk", "<C-\\><C-n>", { desc = "move block down" })

-- scroll and center
map("n", "<C-d>", "<C-d>zz", { desc = "scroll and center" })

-- nvimtree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Nvimtree Tree Toggle" })

-- map("n", "<leader>ca", "<cmd>vim.lsp.buf.code_action()<CR>", { desc = "Nvimtree Tree Toggle" })
map("n", "<leader>ca", "<leader>cs<CR>", { desc = "Nvimtree Tree Toggle" })

map("n", "<leader>cc", "<cmd>lua vim.lsp.codelens.run()<CR>", { desc = "run codelens" })

map("n", "<leader>ct", "<cmd>TroubleToggle<CR>", { desc = "run codelens" })

-- tabufline
map("n", "<S-l>", function()
  require("nvchad.tabufline").next()
end, { desc = "Buffer Goto next" })

map("n", "<S-h>", function()
  require("nvchad.tabufline").prev()
end, { desc = "Buffer Goto prev" })

-- use alt 1-9 to switch tabs
for i = 1, 9, 1 do
  vim.keymap.set("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end

-- Disable mappings
local nomap = vim.keymap.del

nomap("n", "<C-n>")

nomap("n", "<tab>")
nomap("n", "<S-tab>")
