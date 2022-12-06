local present, toggleterm = pcall(require, "toggleterm")

if not present then
  return
end

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new {
  cmd = "lazygit",
  hidden = true,
  direction = "float",
}

function Lazygit_toggle()
  lazygit:toggle()
end

-- vim.api.nvim_set_keymap("n", "<leader>tl", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

toggleterm.setup {
  size = 10,
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = "float",
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = "curved",
    winblend = 0,
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
}
