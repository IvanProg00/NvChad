local opt = vim.opt

opt.colorcolumn = "80,120"
opt.relativenumber = true
opt.mouse = ""
opt.spell = true
opt.spelllang = { "en_us" }
opt.guifont = "Hack Nerd Font Mono:h12"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.backup = false
opt.swapfile = false
opt.scrolloff = 10
opt.wrap = false

local g = vim.g

g.neovide_cursor_animation_length = 0.05
g.mapleader = " "
g.go_metalinter_command = "golangci-lint"
g.go_metalinter_autosave_enabled = {}
g.go_metalinter_enabled = {}

local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWritePre", {
  pattern = {
    "*.go",
    "*.rs",
    "*.lua",
  },
  callback = function()
    vim.lsp.buf.format { async = false }
  end,
})
