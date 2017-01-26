export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)

alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'

#default java 7
export JAVA_HOME=$JAVA_7_HOME

export ANT_HOME=/opt/apache-ant-1.9.7

export PATH=/opt/apache-maven-3.3.9/bin:$PATH
export PATH=$ANT_HOME/bin:$PATH

# for powerline to function properly
export PATH=$HOME/Library/Python/2.7/bin:$PATH


export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33; 1m\]\w\[\033[m\]\$ "
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad
#alias ls='ls -GFh'

# MacPorts Installer addition on 2016-09-28_at_21:19:55: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
