# Simple theme inspired by the kardan theme

PROMPT='%{$fg[blue]%}> %{$reset_color%}'
RPROMPT='%{$fg_bold[black]%}$(git_prompt_info) ${_current_dir}'

local _current_dir="%{$fg_bold[black]%}%3~%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_DIRTY="✗"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[black]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
