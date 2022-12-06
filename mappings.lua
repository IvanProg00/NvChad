local M = {}

M.general = {
  n = {
    ["<leader>up"] = { "<cmd>:PackerSync<CR>", "update packer" },
  },
}

M.lspconfig = {
  plugin = true,
  n = {
    ["]d"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      "goto_next",
    },
  },
}

M.toggleterm = {
  n = {
    ["<leader>tf"] = {
      "<cmd>ToggleTerm direction=float<CR>",
      "toggle floating term",
    },
    ["<leader>tl"] = {
      "<cmd>lua Lazygit_toggle()<CR>",
      -- { noremap = true, silent = true },
      "lazygit",
    },
  },
  t = {
    ["<C-l>"] = {
      "<cmd>ToggleTerm direction=float<CR>",
      "toggle floating term",
    },
  },
}

M.gitsigns = {
  plugin = true,

  n = {
    ["<leader>gs"] = {
      function()
        require("gitsigns").stage_hunk()
      end,
      "Stage hunk",
    },
    ["<leader>gr"] = {
      function()
        require("gitsigns").reset_hunk()
      end,
      "Reset hunk",
    },
    ["<leader>gp"] = {
      function()
        require("gitsigns").preview_hunk()
      end,
      "Preview hunk",
    },
    ["<leader>gb"] = {
      function()
        package.loaded.gitsigns.blame_line()
      end,
      "Blame line",
    },
    ["<leader>gt"] = {
      function()
        require("gitsigns").toggle_deleted()
      end,
      "Toggle deleted",
    },
  },
}

return M
