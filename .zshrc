if [[ `uname` == 'Linux' ]]
then
        export LINUX=1
else
        export LINUX=
fi

if [[ `uname` == 'Darwin' ]]
then
        export OSX=1
else
        export OSX=
fi

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ewenberg"
DISABLE_AUTO_UPDATE="true"
ZSH_CUSTOM=~/.oh-my-zsh-custom
if [[ $OSX == 1 ]] then plugins=(brew mvn grunt zsh-syntax-highlighting) fi
source ~/.oh-my-zsh-custom/ewenberg.zsh-theme

if [[ $OSX == 1 ]]
then
  POSTGRES_PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin
  BREW_PATH=/usr/local/bin
  export PATH=$BREW_PATH:$POSTGRES_PATH:$PATH
  export TERM=xterm-256color
  export JAVA_HOME=$(/usr/libexec/java_home -v1.8)
fi

HOME_PATH=$HOME/bin
export PATH=$HOME_PATH:$PATH

alias ls="ls -laG"
alias lines_of_code="git ls-files | egrep '(xml|java|as|mxml|js)$' | xargs wc -l"
alias untar="tar xvzf"
alias password="openssl rand -base64 12"
