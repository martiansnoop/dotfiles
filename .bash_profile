export MAVEN_OPTS=-Xmx1042m
export JAVA_HOME=/Library/Java/Home
export PATH=$JAVA_HOME/bin:$PATH

FLASH_PLAYER='/Applications/Flash Player.app/Contents/MacOS'
export PATH=$FLASH_PLAYER:$PATH

alias buildallthethings="mvn clean package -DconfigurationReport=true -Dassembly=dir flexmojos:wrapper"

export ANDROID_HOME=/usr/local/Cellar/android-sdk/r22.0.4
#export ANDROID_HOME=`brew --prefix android`
export PATH=$ANDROID_HOME:$PATH

alias ls="ls -la"

#Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#bump /usr/local/bin up in the path 
export PATH="/usr/local/bin:$PATH"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#SML
export PATH="$PATH:/usr/local/smlnj/bin"

#alias static build of ffmpeg to reasonable thing
alias ffmpeg=ffmpeg-static-1.2.3.1
alias ffprobe=ffprobe-static-1.2.3.1
alias lines_of_code="git ls-files | egrep '(xml|java|as|mxml|js)$' | xargs wc -l"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
