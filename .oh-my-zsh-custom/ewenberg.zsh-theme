# Simple theme inspired by the kardan theme

# autoload colors makes it so you can access colors via fg[red] and fg_bold[red]
autoload -U colors && colors

PROMPT='%{$fg_bold[black]%}%n@%m > %{$reset_color%}'
RPROMPT='%{$fg_bold[black]%}$(git_prompt_info) ${_current_dir} %{$reset_color%}'

local _current_dir="%3~"

ZSH_THEME_GIT_PROMPT_DIRTY="✗"
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
