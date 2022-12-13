return {
  -- LSP
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.null-ls"
    end,
  },
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        "actionlint",
        "autopep8",
        "eslint-lsp",
        "gitlint",
        "prettier",
        "lua-language-server",
        "stylua",
        "yaml-language-server",
        "pylint",
        "golangci-lint-langserver",
        "gopls",
        "typescript-language-server",
        "shfmt",
      },
    },
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed = {
        "lua",
        "go",
        "gomod",
        "gowork",
        "rust",
        "json",
        "yaml",
        "toml",
        "javascript",
        "python",
        "html",
        "markdown",
      },
      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
      },
    },
  },

  -- UI
  ["folke/which-key.nvim"] = {
    disable = false,
    override_options = function()
      local wk = require "which-key"

      wk.register({
        g = {
          name = "Git",
        },
        u = {
          name = "Update",
        },
      }, { prefix = "<leader>" })
    end,
  },
  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        separator_style = "block",
      },
      tabufline = {
        enabled = true,
        lazyload = true,
      },
    },
  },

  -- Git
  ["lewis6991/gitsigns.nvim"] = {
    override_options = {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 600,
      },
    },
  },

  -- Editor
  ["RRethy/vim-illuminate"] = {
    opt = true,
    event = "BufReadPost",
    config = function()
      require "custom.plugins.configs.illuminate"
    end,
  },
  ["karb94/neoscroll.nvim"] = {
    opt = true,
    event = "BufReadPost",
    config = function()
      require "custom.plugins.configs.neoscroll"
    end,
  },
  ["folke/todo-comments.nvim"] = {
    config = function()
      require("todo-comments").setup {}
    end,
  },
  ["nvim-lua/plenary.nvim"] = {},
  ["ray-x/lsp_signature.nvim"] = {
    config = function()
      require("lsp_signature").setup {
        max_height = 5,
      }
    end,
  },
  ["p00f/nvim-ts-rainbow"] = {
    after = "nvim-treesitter",
  },
  ["ray-x/guihua.lua"] = {},

  -- Languages
  ["ray-x/go.nvim"] = {
    config = function()
      require("go").setup {
        run_in_floaterm = true,
        lsp_inlay_hints = {
          enable = true,
        },
      }
    end,
  },
  ["simrat39/rust-tools.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      local rt = require "rust-tools"

      rt.setup {
        server = {
          on_attach = function(_, _) end,
        },
      }
    end,
  },
  ["kyazdani42/nvim-tree.lua"] = {
    override_options = {
      git = {
        enable = true,
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
      },
    },
  },
  ["NvChad/nvterm"] = false,
  ["akinsho/toggleterm.nvim"] = {
    tag = "*",
    config = function()
      require "custom.plugins.configs.toggleterm"
    end,
  },
  ["mfussenegger/nvim-dap"] = {},
  ["rcarriga/nvim-dap-ui"] = {
    requires = { "mfussenegger/nvim-dap" },
    config = function()
      require("dapui").setup()
    end,
  },
  ["theHamsta/nvim-dap-virtual-text"] = {
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  },
}
