# Use single quotes so variables are executed by the prompt,
# as opposed to once, when this file is run.
color='%B%F{black}'
decolor='%b%f'
PROMPT='$color%n@%m > $decolor'
RPROMPT='$color$(git_prompt_info) %3~$decolor'

