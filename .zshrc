[[ `uname` == 'Linux' ]] && export LINUX=1
[[ `uname` == 'Darwin' ]] && export OSX=1

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ewenberg"
DISABLE_AUTO_UPDATE="true"
ZSH_CUSTOM=~/.oh-my-zsh-custom
[[ $OSX == 1 ]] && plugins=(fast-git mvn)
[[ $LINUX == 1 ]] && plugins=(fast-git)
source $ZSH/oh-my-zsh.sh

if [[ $OSX == 1 ]]
then
  POSTGRES_PATH=/Applications/Postgres.app/Contents/Versions/latest/bin
  BREW_PATH=/usr/local/bin
  export PATH=$BREW_PATH:$POSTGRES_PATH:$PATH
  export TERM=xterm-256color
  export JAVA_HOME=$(/usr/libexec/java_home -v1.8)
fi

HOME_PATH=$HOME/bin
RUST_PATH=$HOME/.cargo/bin
export PATH=$HOME_PATH:$RUST_PATH:$PATH

export EDITOR=vim

compdef pssh=ssh
compdef pscp=scp

alias ls="ls -laG"
alias timestamp='date -u +"%Y-%m-%dT%H:%M:%SZ"'
alias epoch='date +%s'
alias fuck="echo 'I hate everything too.'"

# Things I want to remember
# rough lines of code  in a dir: "git ls-files | egrep '(xml|java|as|mxml|js|ts|html)$' | xargs wc -l"
# what to put with tar to untar something: "tar xvzf"
# generate a password of x characters: "openssl rand -base64 x" 
# timestamp but with tz 'date +%Y-%m-%dT%H:%M:%S%z'
# pretty print json: python -m json.tool

# https://github.com/zsh-users/zsh-syntax-highlighting
# Initialize zsh-syntax-highlighting last, per their documentation
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
source ~/.oh-my-zsh-custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
