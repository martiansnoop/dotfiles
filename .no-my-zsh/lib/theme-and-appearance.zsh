# ls colors
autoload -U colors && colors

# Enable ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

setopt auto_cd
setopt multios
setopt prompt_subst
