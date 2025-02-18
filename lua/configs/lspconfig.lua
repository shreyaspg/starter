require("nvchad.configs.lspconfig").defaults()

local servers = { "rust_analyzer", "gopls", "bashls"}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
