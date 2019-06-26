# quote-magic escapes chars in urls while you type
# paste-magic does the same when you paste a url
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

## jobs
setopt long_list_jobs

# recognize comments
setopt interactivecomments

function zsh_stats() {
  fc -l 1 | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n20
}

# Required for $langinfo
zmodload zsh/langinfo

# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

# ls colors
autoload -U colors && colors

# Enable ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# this lets you chain file redirects, I guess
setopt multios
# allow variables to be computed in your prompt
setopt prompt_subst
