# NVM stuff:

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # Add --no-use if startup is slow
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# NPM stuff:
# Aliases to enable/disable the .npmrc I have for the office:

alias homenpm="mv ~/.npmrc ~/.npmrc1 && echo \"HOME: .npmrc disabled.\""
alias worknpm="mv ~/.npmrc1 ~/.npmrc && echo \"WORK: .npmrc enabled.\""
alias whichnpm="[ -f ~/.npmrc ] && echo \"WORK: .npmrc enabled. Use homnpm to disable it.\" || echo \"HOME: .npmrc disabled. Use worknpm to enable it.\""


# JAVA/MAVEN/ANDROID:

export JAVA_HOME=`/usr/libexec/java_home -v 1.8` # Use -v X.Y in case you installed multiple versions.
export ANDROID_HOME=~/Library/Android/sdk

export PATH=$PATH:~/Dev/apache-maven-3.5.2/bin
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools


# NATIVESCRIPT TNS COMPLETITION:

if [ -f /Users/danielgamezfranco/.tnsrc ]; then 
    source /Users/danielgamezfranco/.tnsrc 
fi


# COLORS:

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad


# PROMPT:

export PS1="\W \[\033[38;5;11m\]➜\[$(tput sgr0)\]\[\033[38;5;15m\]  \[$(tput sgr0)\]"


# ALIASES:

alias cls="clear"
alias lc="clear && pwd && echo && ls && echo"
alias editbrc="atom ~/.bashrc"
alias edit="atom"


# Use echo $BASH_CONF to know which config are we using:
export BASH_CONF="bashrc"
