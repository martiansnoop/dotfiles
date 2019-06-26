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

# Outputs current branch info in prompt format
function git_prompt_info() {
  local ref
  ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
      ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
  echo "[${ref#refs/heads/}$(parse_git_dirty)]"
}

# Checks if working tree is dirty
function parse_git_dirty() {
  [[ -n  $(git status --porcelain --ignore-submodules=dirty) ]] && echo "*"
}
