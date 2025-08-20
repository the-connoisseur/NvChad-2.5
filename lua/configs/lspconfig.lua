require("nvchad.configs.lspconfig").defaults()

local servers = {
  "clangd",
}
for _, s in ipairs(servers) do
  vim.lsp.enable(s)
end

-- read :h vim.lsp.config for changing options of lsp servers

return servers
