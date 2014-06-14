export MAVEN_OPTS=-Xmx1042m
export JAVA_HOME=/Library/Java/Home
export PATH=$JAVA_HOME/bin:$PATH
#export ANDROID_HOME=/usr/local/Cellar/android-sdk/r22.0.4
export ANDROID_HOME=`brew --prefix android`
export PATH=$ANDROID_HOME:$PATH

alias ls="ls -la"

#bump /usr/local/bin up in the path for brew things 
export PATH="/usr/local/bin:$PATH"

#git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias lines_of_code="git ls-files | egrep '(xml|java|as|mxml|js)$' | xargs wc -l"

