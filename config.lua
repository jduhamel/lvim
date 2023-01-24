lvim.leader = " "
lvim.log.level = "warn"
vim.g.python_host_prog = '/usr/bin/python'
vim.g.python3_host_prog = '/usr/bin/python3'

-- Set some toggleable plugins. 
lvim.builtin.task_runner = "overseer" -- options are blank, async_tasks or overseer

reload "user.plugins"
reload "user.options"
reload "user.keymaps"
reload "user.autocommands"
reload "user.lsp"
reload "user.smoothie"
reload "user.harpoon"
reload "user.cybu"
reload "user.surround"
reload "user.bookmark"
reload "user.todo-comments"
reload "user.jaq"
reload "user.lab"
reload "user.git"
reload "user.zen-mode"
reload "user.inlay-hints"
reload "user.telescope"
reload "user.bqf"
reload "user.dial"
reload "user.numb"
reload "user.treesitter"
reload "user.neogit"
reload "user.colorizer"
reload "user.lualine"
reload "user.scrollbar"
reload "user.bufferline"
-- reload "user.zk"
reload "user.chatgpt"
reload "user.whichkey"

