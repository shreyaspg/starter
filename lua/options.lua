require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "tab:→ "
vim.opt.listchars:append "eol:↴"

vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"

vim.opt.relativenumber = true

vim.opt.colorcolumn = "80"