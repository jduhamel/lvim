-- Additional Plugins
lvim.plugins = {
  "ellisonleao/gruvbox.nvim",
  "LunarVim/synthwave84.nvim",
  "rafi/awesome-vim-colorschemes",
  "roobert/tailwindcss-colorizer-cmp.nvim",
  "lunarvim/github.nvim",
  "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "christianchiarulli/nvim-ts-rainbow",
  "mfussenegger/nvim-jdtls",
  -- "karb94/neoscroll.nvim",
  "opalmay/vim-smoothie",
  "j-hui/fidget.nvim",
  "christianchiarulli/nvim-ts-autotag",
  "kylechui/nvim-surround",
  "christianchiarulli/harpoon",
  "MattesGroeger/vim-bookmarks",
  "NvChad/nvim-colorizer.lua",
  "ghillb/cybu.nvim",
  "moll/vim-bbye",
  "folke/todo-comments.nvim",
  "windwp/nvim-spectre",
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",
  "mattn/vim-gist",
  "mattn/webapi-vim",
  "folke/zen-mode.nvim",
  "lvimuser/lsp-inlayhints.nvim",
  "lunarvim/darkplus.nvim",
  "lunarvim/templeos.nvim",
  "kevinhwang91/nvim-bqf",
  "is0n/jaq-nvim",
  "hrsh7th/cmp-emoji",
  "ggandor/leap.nvim",
  "nacro90/numb.nvim",
  "TimUntersberger/neogit",
  "sindrets/diffview.nvim",
  "simrat39/rust-tools.nvim", --  "olexsmir/gopher.nvim",
  --  "ray-x/go.nvim",
  "olexsmir/gopher.nvim",
  {
    "leoluz/nvim-dap-go",
    config = function()
      require("dap-go").setup()
    end,
  },
  "mfussenegger/nvim-dap-python",
  "jose-elias-alvarez/typescript.nvim",
  "mxsdev/nvim-dap-vscode-js",
  "petertriho/nvim-scrollbar",
  "renerocksai/telekasten.nvim",
  -- "renerocksai/calendar-vim",
  -- JSD Plugins --
  -- not sure why trouble isn't here...
  {
    "Olical/conjure",
    config = function()
      require("user.conjure").config()
    end,
    enabled = true,
  },
  {
    "andythigpen/nvim-coverage",
    config = function()
      require("coverage").setup()
    end,
  },
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        auto_open = false,
        auto_close = true,
        padding = false,
        height = 10,
        use_diagnostic_signs = true,
      }
    end,
    event = "VeryLazy",
    cmd = "Trouble",
  },
  {
    "danymat/neogen",
    lazy = true,
    config = function()
      require("neogen").setup { enabled = true }
    end,
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
  {
    "nvim-neotest/neotest",
    config = function()
      require("user.neotest").config()
    end,
    dependencies = { { "nvim-neotest/neotest-plenary" } },
    event = { "BufReadPost", "BufNew" },
    enabled = true,
  },
  { "rouge8/neotest-rust", event = { "BufEnter *rs" } },
  { "nvim-neotest/neotest-go", event = { "BufEnter *.go" } },
  { "nvim-neotest/neotest-python", event = { "BufEnter *.py" } },
  {
    "akinsho/flutter-tools.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("user.flutter_tools").config()
    end,
    ft = "dart",
  },
  {
    "stevearc/overseer.nvim",
    config = function()
      require("user.overseer").config()
    end,
    enabled = lvim.builtin.task_runner == "overseer",
  },
  {
    "skywind3000/asynctasks.vim",
    dependencies = "skywind3000/asyncrun.vim",
    init = function()
      vim.cmd [[
        let g:asyncrun_open = 8
        let g:asynctask_template = '~/.config/lvim/task_template.ini'
        let g:asyuntasks_extra_config = "~/.config/lvim/tasks.ini"
    ]]
    end,
    event = { "BufRead", "BufNew" },
    enabled = lvim.builtin.task_runner == "async_tasks",
  }, -- End JSD plugins / changes
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = { enabled = true, name = "crates.nvim" },
      }
    end,
  },
  "MunifTanjim/nui.nvim",
  "jackMort/ChatGPT.nvim",
  {
    "jinh0/eyeliner.nvim",
    config = function()
      require("eyeliner").setup { highlight_on_key = true }
    end,
  },
  { "christianchiarulli/telescope-tabs", branch = "chris" },
  "monaqa/dial.nvim",
  { "0x100101/lab.nvim", build = "cd js && npm ci" },
  { "tzachar/cmp-tabnine", build = "./install.sh" },
  {
    "zbirenbaum/copilot.lua",
    -- event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup {
          plugin_manager_path = os.getenv "LUNARVIM_RUNTIME_DIR" .. "/site/pack/packer",
        }
      end, 100)
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup {
        formatters = {
          insert_text = require("copilot_cmp.format").remove_existing,
        },
      }
    end,
  },
  -- "MunifTanjim/nui.nvim",
  -- {
  --   "folke/noice.nvim",
  --   event = "VimEnter",
  --   config = function()
  --     require("noice").setup()
  --   end,
  -- },

  -- https://github.com/jose-elias-alvarez/typescript.nvim
  -- "rmagatti/auto-session",
  -- "rmagatti/session-lens"
}
