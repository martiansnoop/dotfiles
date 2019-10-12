" must source this file inside vimplug's begin method
Plug 'ludovicchabant/vim-gutentags'
Plug 'w0rp/ale'
let g:ale_echo_msg_format = '[%linter%] %s'
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_pattern_options = {
\   '.*\.ts$': {'ale_enabled': 0},
\   '.*\.ng.html$': {'ale_enabled': 0},
\   '.*\.scss$': {'ale_enabled': 0},
\   '.*\.java$': {'ale_enabled': 0},
\}


" ctags shortcuts
nnoremap <leader>f <C-]>   " (f)ind definition
nnoremap <leader>g <C-t>   " (g)o back

set tabstop=4
set shiftwidth=4  " number of spaces to use for autoindenting


