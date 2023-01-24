local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local opts = {

  root_dir = function(fname)
    local util = require "lspconfig.util"
    local root_files = {
      "pyproject.toml",
      "setup.py",
      "setup.cfg",
      "requirements.txt",
      "Pipfile",
      "manage.py",
      "pyrightconfig.json",
    }
    return util.root_pattern(unpack(root_files))(fname) or util.root_pattern ".git"(fname) or util.path.dirname(fname)
  end,
  settings = {
    pyright = {
      disableLanguageServices = false,
      disableOrganizeImports = false,
    },
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true,
      },
    },
  },
  single_file_support = true,
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
  C = {
    name = "Python",
    t = { "<cmd>lua require('dap-python').test_method()<cr>", "Test Method" },
    T = { "<cmd>lua require('dap-python').test_class()<cr>", "Test Class" },
    d = { "<cmd>lua require('dap-python').debug_selection()<cr>", "Debug Selection" },
  },
}

require("lvim.lsp.manager").setup("pyright", opts)
which_key.register(mappings, opts)
