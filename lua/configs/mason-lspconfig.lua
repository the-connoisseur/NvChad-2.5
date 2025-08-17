-- List of servers to ignore during install
local ignore_install = {}

-- Helper function to find if value is in table.
local function table_contains(table, value)
  for _, v in ipairs(table) do
    if v == value then
      return true
    end
  end
  return false
end

-- Build a list of lsp servers to install minus the ignored list.
-- Add "lua_ls" manually since that's set up under the hood in NvChad.
local all_servers = { "lua_ls" }
for _, s in ipairs(vim.lsp.get_clients()) do
  if not table_contains(ignore_install, s.name) then
    table.insert(all_servers, s.name)
  end
end

require("mason-lspconfig").setup({
  ensure_installed = all_servers,
  automatic_installation = false,
})
