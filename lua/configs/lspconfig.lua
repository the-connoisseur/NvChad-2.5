require("nvchad.configs.lspconfig").defaults()

local servers = {
  "clangd",
  "pyright",
  "rust_analyzer",
}

local default_on_attach = require("nvchad/configs/lspconfig").on_attach
vim.lsp.config("rust_analyzer", {
  on_attach = function(client, bufnr)
    default_on_attach(client, bufnr)
    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
  end,
})

for _, s in ipairs(servers) do
  vim.lsp.enable(s)
end

-- read :h vim.lsp.config for changing options of lsp servers

return servers
