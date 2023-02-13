require("telescope").load_extension "dap"
require "dbg.go"
require "dbg.python"
require "dbg.rust"
require "dbg.flutter"

local utils = require "utils"

utils.map("n", "<leader>dsv", '<cmd>lua require"dap".step_over()<CR>')
utils.map("n", "<leader>dsi", '<cmd>lua require"dap".step_into()<CR>')
utils.map("n", "<leader>dso", '<cmd>lua require"dap".step_out()<CR>')

utils.map("n", "<leader>dsc", '<cmd>lua require"dap.ui.variables".scopes()<CR>')
utils.map("n", "<leader>dhh", '<cmd>lua require"dap.ui.variables".hover()<CR>')
utils.map("v", "<leader>dhv", '<cmd>lua require"dap.ui.variables".visual_hover()<CR>')

utils.map("n", "<leader>dUh", '<cmd>lua require"dap.ui.widgets".hover()<CR>')
utils.map(
  "n",
  "<leader>dUf",
  "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>"
)

utils.map("n", "<leader>dsbr", '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>')
utils.map(
  "n",
  "<leader>dsbm",
  '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>'
)
utils.map("n", "<leader>dRo", '<cmd>lua require"dap".repl.open()<CR>')
utils.map("n", "<leader>dRl", '<cmd>lua require"dap".repl.run_last()<CR>')

-- telescope-dap
utils.map("n", "<leader>dCc", '<cmd>lua require"telescope".extensions.dap.commands{}<CR>')
utils.map("n", "<leader>dCo", '<cmd>lua require"telescope".extensions.dap.configurations{}<CR>')
utils.map("n", "<leader>dCb", '<cmd>lua require"telescope".extensions.dap.list_breakpoints{}<CR>')
utils.map("n", "<leader>dCv", '<cmd>lua require"telescope".extensions.dap.variables{}<CR>')
utils.map("n", "<leader>dCf", '<cmd>lua require"telescope".extensions.dap.frames{}<CR>')
