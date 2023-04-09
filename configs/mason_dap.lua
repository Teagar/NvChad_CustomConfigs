local sources = {}
local data_exists, data = pcall(require, "core.config")
if data_exists then
  for _, nullls in pairs(data.dap_ensure_installed) do
    table.insert(sources, nullls)
  end
end
require("mason").setup()
require("mason-nvim-dap").setup {
  ensure_installed = sources,
  automatic_setup = true,
}
require("mason-nvim-dap").setup_handlers {}
