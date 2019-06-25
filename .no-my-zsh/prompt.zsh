# Use single quotes so variables are executed by the prompt,
# as opposed to once, when this file is run.
color='%B%F{black}'
decolor='%b%f'

omg_color='%B%F{001}'

autoload -U vcs_info

# zstyle ':vcs_info:*' stagedstr '%F{green}●%f '
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git*' formats "[%b%u]"

vcs_info
precmd_functions+=(vcs_info)

PROMPT='$color%n@%m $omg_color$(error_status)$color> $decolor'
RPROMPT='$color$vcs_info_msg_0_ %3~$decolor'

function error_status() {
    last_command=$?
    [[ last_command -ne 0 ]] && echo " [$last_command] "
}

