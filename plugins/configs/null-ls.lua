local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  b.diagnostics.golangci_lint,

  b.formatting.goimports,
  b.formatting.stylua,
  b.formatting.prettier.with {
    filetypes = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "html",
      "css",
      "markdown",
    },
  },

  b.formatting.shfmt,
  b.diagnostics.markdownlint,
}

null_ls.setup {
  debug = false,
  sources = sources,
}
