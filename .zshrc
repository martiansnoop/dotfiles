# oh-my-zsh stuff 
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ewenberg"
DISABLE_AUTO_UPDATE="true"
ZSH_CUSTOM=~/.oh-my-zsh-custom
plugins=(brew mvn grunt)
source $ZSH/oh-my-zsh.sh
 
export JAVA_HOME=$(/usr/libexec/java_home -v1.8)
export ANDROID_HOME=`brew --prefix android`
POSTGRES_HOME=/Applications/Postgres.app/Contents/Versions/9.3
export PATH=$HOME/bin:/usr/local/bin:$POSTGRES_HOME/bin:$PATH
export TERM=xterm-256color
alias ls="ls -laG"
alias lines_of_code="git ls-files | egrep '(xml|java|as|mxml|js)$' | xargs wc -l"
alias untar="tar xvzf"
alias password="openssl rand -base64 12"
