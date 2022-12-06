local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local goimports = b.formatting.goimports
local e = os.getenv "GOIMPORTS_LOCAL"
if e ~= nil then
  goimports = goimports.with { extra_args = { "-local", e } }
end

local sources = {
  -- Go
  goimports,
  null_ls.builtins.diagnostics.golangci_lint,

  -- Lua
  b.formatting.stylua,
}

null_ls.setup {
  debug = false,
  sources = sources,
}