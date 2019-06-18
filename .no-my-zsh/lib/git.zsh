# Outputs current branch info in prompt format
function git_prompt_info() {
  local ref
  ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
      ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
  echo "${ref#refs/heads/}$(parse_git_dirty)"
}

# Checks if working tree is dirty
function parse_git_dirty() {
  [[ -n  $(git status --porcelain --ignore-submodules=dirty) ]] && echo "*"
}
