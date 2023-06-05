syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[-\]'hs=e-4 conceal cchar=󰄱
syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[X\]'hs=e-4 conceal cchar=󰄵 nextgroup=adda skipwhite
syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[S\]'hs=e-4 conceal cchar=󰄵 nextgroup=veta skipwhite
syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[\.\]'hs=e-4 conceal cchar=󰄱
syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[\s\]'hs=e-4 conceal cchar=󰄱
syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[o\]'hs=e-4 conceal cchar=󰄱
syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[O\]'hs=e-4 conceal cchar=󰄵

syntax match adda '\S.*\ze\s\s[^#]*' contained
syntax match veta '\S.*\ze\s\s[^#]*' contained
