alias ls="ls -la"

#bump /usr/local/bin up in the path for brew things 
export PATH="/usr/local/bin:$PATH"

#git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias lines_of_code="git ls-files | egrep '(xml|java|as|mxml|js)$' | xargs wc -l"

