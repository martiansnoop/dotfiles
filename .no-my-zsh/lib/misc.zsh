autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

## jobs
setopt long_list_jobs

# recognize comments
setopt interactivecomments
