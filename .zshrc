# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=/Users/`whoami`/.oh-my-zsh
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export ANT_HOME=/opt/apache-ant-1.9.7
export VLT_HOME=/opt/vault-cli-3.1.16
export MAVEN_HOME=/opt/apache-maven-3.3.9/bin

alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias eclipse='/Users/christopherdrew/eclipse/jee-neon/Eclipse Neon.app/Contents/MacOS/eclipse'
alias java8='export JAVA_HOME=$JAVA_8_HOME'

#default java 7
export JAVA_HOME=$JAVA_8_HOME

export PATH=/opt/apache-maven-3.3.9/bin:$PATH
export PATH=$ANT_HOME/bin:$PATH
export PATH=$VLT_HOME/bin:$PATH

# for powerline to function properly
export PATH=$HOME/Library/Python/2.7/bin:$PATH

# Oracle environment variables:
export ORACLE_HOME=/Library/Oracle
export DYLD_LIBRARY_PATH=$ORACLE_HOME/instantclient_12_1
export TNS_ADMIN=$DYLD_LIBRARY_PATH/network/admin
export NLS_LANG=American_America.UTF8

export PATH=$PATH:$ORACLE_HOME:$DYLD_LIBRARY_PATH


# Node.js variables:
export NVM_DIR=$HOME/.nvm
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Maven options
#export MAVEN_OPTS="-Xmx256M -XX:MaxPermSize=256m"
export MAVEN_OPTS="-Xms1024m -Xmx1G -XX:PermSize=1024m -javaagent:/opt/local/jar/springloaded-1.2.5.RELEASE.jar -noverify"

# convenience aliases
alias weather='clear;curl http://wttr.in/New+York'
alias hist=history
alias ffind=/Users/`whoami`/ffind.sh
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias sbt=/opt/sbt/bin/sbt

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="bira"
#ZSH_THEME="bureau"
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"
DEFAULT_USER=`whoami` # shortens the prompt

#powerlevel9k settings
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs status time nvm nodeenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs status time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_DELIMITER=".."
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_with_package_name"
POWERLEVEL9K_TIME_FORMAT="%t"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
export HISTCONTROL=ignoredups
export HISTCONTROL=erasedups
export HISTIGNORE="pwd:ls:ls -l:ls -a:ls -ltr:ls -ltrFGh"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
#source /Users/`whoami`/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh #uncomment this to force the default powerline style

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="/Users/christopherdrew/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# zsh syntax highlighting
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# z: shortcut script for cd
. `brew --prefix`/etc/profile.d/z.sh

# tiny care terminal variables

# List of accounts to read the last tweet from, comma separated
# # The first in the list is read by the party parrot.
export TTC_BOTS='tinycarebot,selfcare_bot,magicrealismbot'
#
# # Use this to have a different animal say a message in the big box.
export TTC_SAY_BOX="parrot"
#
# # List of folders to look into for `git` commits, comma separated.
export TTC_REPOS='~/git-projects'
#
# # The max directory-depth to look for git repositories in
# # the directories defined with `TTC_REPOS`. Note that the deeper
# # the directory depth, the slower the results will be fetched.
#
export TTC_REPOS_DEPTH=2
#
# # Location/zip code to check the weather for. Both 90210 and "San Francisco, CA"
# # _should_ be ok (the zip code doesn't always work -- use a location
# # first, if you can). It's using weather.service.msn.com behind the curtains.
export TTC_WEATHER='New York'
#
# # Set to false if you're an imperial savage. <3
export TTC_CELSIUS=false
#
# # Unset this if you _don't_ want to use Twitter keys and want to
# # use web scraping instead.
export TTC_APIKEYS=false
#
# # Refresh the dashboard every 20 minutes.
export TTC_UPDATE_INTERVAL=20
#
# # Twitter api keys
# export TTC_CONSUMER_KEY='...'
# export TTC_CONSUMER_SECRET='...'
# export TTC_ACCESS_TOKEN='...'
# export TTC_ACCESS_TOKEN_SECRET='...'
#
# # Note: in tiny-terminal-care < 1.0.7, the recommended variables for the Twitter
# # API keys were the ones before. As of 1.0.8, they are deprecated
# # (because the names are too generic), but will still be supported
# # until the next major version.
# export CONSUMER_KEY='...'
# export CONSUMER_SECRET='...'
# export ACCESS_TOKEN='...'
# export ACCESS_TOKEN_SECRET='...'
