export LANG=en_US.UTF-8

# turn on vim keybindings in terminal
bindkey -v

source ~/.no-my-zsh/init.zsh

color='%B%F{black}'
decolor='%b%f'
PROMPT='$color%n@%m > $decolor'
RPROMPT='$color$(git_prompt_info) %3~$decolor'

HOME_PATH=$HOME/bin
RUST_PATH=$HOME/.cargo/bin
export PATH=$HOME_PATH:$RUST_PATH:$PATH

export EDITOR=vim
export FZF_DEFAULT_COMMAND="rg --files --hidden"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# G - colors
# T - complete time info in long form
# F - symbols based on isDirectory/isExec/isLink/etc
# o - omit the group rom the long form
# h - human-friendly sizes
# a - include hidden
# l - long form
alias ls="ls -GFo -hal --time-style=locale --color=auto"

alias dirs='dirs -v'
alias timestamp='date -u +"%Y-%m-%dT%H:%M:%SZ"'
alias epoch='date +%s'
alias fuck="echo 'I hate everything too.'"
alias xclip="xclip -sel clip"

# Things I want to remember
# rough lines of code  in a dir: "git ls-files | egrep '(xml|java|as|mxml|js|ts|html)$' | xargs wc -l"
# what to put with tar to untar something: "tar xvzf"
# generate a password of x characters: "openssl rand -base64 x" 
# timestamp but with tz 'date +%Y-%m-%dT%H:%M:%S%z'
# pretty print json: python -m json.tool
# epoch in seconds:  date +%s

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# https://github.com/zsh-users/zsh-syntax-highlighting
# Initialize zsh-syntax-highlighting last, per their documentation
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
source ~/.oh-my-zsh-custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
