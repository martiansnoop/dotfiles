# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ewenberg"
DISABLE_AUTO_UPDATE="true"
ZSH_CUSTOM=~/.oh-my-zsh-custom
plugins=(brew mvn)
source $ZSH/oh-my-zsh.sh

# User configuration
export JAVA_HOME=$(/usr/libexec/java_home -v1.8)
export ANDROID_HOME=`brew --prefix android`
export PATH=$HOME/bin:/usr/local/bin:$JAVA_HOME/bin:$ANDROID_HOME/bin:$PATH

alias ls="ls -laG"

alias lines_of_code="git ls-files | egrep '(xml|java|as|mxml|js)$' | xargs wc -l"

