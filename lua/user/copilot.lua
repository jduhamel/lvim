local M = {}

M.config = function()
  local found, copilot = pcall(require, "copilot")
  if not found then
    vim.notity "copilot not found"
    return
  end

  vim.g.copilot_filetypes = {
    ["*"] = true,
    python = true,
    lua = true,
    go = true,
    rust = true,
    html = true,
    c = true,
    cpp = true,
    java = true,
    javascript = true,
    typescript = true,
    javascriptreact = true,
    typescriptreact = true,
    terraform = true,
  }

  copilot.setup {
    panel = {
      enabled = true,
      auto_refresh = false,
      keymap = {
        jump_next = "<c-j>",
        jump_prev = "<c-k>",
        accept = "<c-o>",
        refresh = "r",
        open = "<M-CR>",
      },
      layout = {
        position = "bottom", -- | top | left | right
        ratio = 0.4,
      },
    },
    suggestion = {
      enabled = true,
      auto_trigger = true,
      debounce = 75,
      keymap = {
        accept = "<c-o>",
        accept_word = false,
        accept_line = false,
        next = "<c-j>",
        prev = "<c-k>",
        dismiss = "<C-h>",
      },
    },
  }
end

-- local opts = { noremap = true, silent = true }
-- local keymap = vim.keymap.set

return M
