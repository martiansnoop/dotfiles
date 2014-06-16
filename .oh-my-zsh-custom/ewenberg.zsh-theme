# Simple theme inspired by the kardan theme

PROMPT='> '
RPROMPT='$(git_prompt_info) ${_current_dir}'

local _current_dir="%{$fg[gray]%}%3~%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[white]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
