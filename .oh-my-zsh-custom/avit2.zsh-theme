#AVIT ZSH Theme

PROMPT='$USER > '

PROMPT2='%{$fg[grey]%}<%{$reset_color%} '

#RPROMPT='${_current_dir}%{$(echotc UP 1)%} ${_return_status}%{$(echotc DO 1)%}'
RPROMPT='${_current_dir}'

local _current_dir="%{$fg[gray]%}%3~%{$reset_color%} "
local _return_status="%{$fg[red]%}%(?..⍉)%{$reset_color%}"
local _hist_no="%{$fg[grey]%}%h%{$reset_color%}"

#function _user_host() {
#  if [[ -n $SSH_CONNECTION ]]; then
#    me="%n@%m"
#  elif [[ $LOGNAME != $USER ]]; then
#    me="%n"
#  fi
#  if [[ -n $me ]]; then
#    echo "%{$fg[cyan]%}$me%{$reset_color%}:"
#  fi
#}

#function _vi_status() {
#  if {echo $fpath | grep -q "plugins/vi-mode"}; then
#    echo "$(vi_mode_prompt_info)"
#  fi
#}

if [[ $USER == "root" ]]; then
  CARETCOLOR="red"
else
  CARETCOLOR="white"
fi

#MODE_INDICATOR="%{$fg_bold[yellow]%}❮%{$reset_color%}%{$fg[yellow]%}❮❮%{$reset_color%}"

#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

#ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
#ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}⚑ "
#ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
#ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}▴ "
#ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%}§ "
#ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%}◒ "

# Colors vary depending on time lapsed.
#ZSH_THEME_GIT_TIME_SINCE_COMMIT_SHORT="%{$fg[green]%}"
#ZSH_THEME_GIT_TIME_SHORT_COMMIT_MEDIUM="%{$fg[yellow]%}"
#ZSH_THEME_GIT_TIME_SINCE_COMMIT_LONG="%{$fg[red]%}"
#ZSH_THEME_GIT_TIME_SINCE_COMMIT_NEUTRAL="%{$fg[grey]%}"

# LS colors, made with http://geoff.greer.fm/lscolors/
#export LSCOLORS="exfxcxdxbxegedabagacad"
#export LS_COLORS='di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'
#export GREP_COLOR='1;33'

