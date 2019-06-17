
# add a function path
fpath=($ZSH/functions $ZSH/completions $fpath)

# Load all stock functions (from $fpath files) called below.
autoload -U compaudit compinit

for file in ~/.no-my-zsh/lib/*.zsh; do
    source "$file"
done

