# Use single quotes so variables are executed by the prompt,
# as opposed to once, when this file is run.
color='%B%F{black}'
decolor='%b%f'

omg_color='%b%F{001}'

PROMPT='$omg_color$(error_status)$color%n@%m> $decolor'
RPROMPT='$color$(git_prompt_info) %3~$decolor'

function error_status() {
    last_command=$?
    [[ last_command -ne 0 ]] && echo "!"
}

