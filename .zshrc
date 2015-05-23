export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ewenberg"
DISABLE_AUTO_UPDATE="true"
ZSH_CUSTOM=~/.oh-my-zsh-custom
plugins=(brew mvn grunt)
source $ZSH/oh-my-zsh.sh

POSTGRES_PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin
HOME_PATH=$HOME/bin
BREW_PATH=/usr/local/bin
export PATH=$HOME_PATH:$BREW_PATH:$POSTGRES_PATH:$PATH

export TERM=xterm-256color
export JAVA_HOME=$(/usr/libexec/java_home -v1.8)

alias ls="ls -laG"
alias lines_of_code="git ls-files | egrep '(xml|java|as|mxml|js)$' | xargs wc -l"
alias untar="tar xvzf"
alias password="openssl rand -base64 12"
