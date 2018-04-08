
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


#   Set Paths
#   ------------------------------------------------------------
export PATH="$PATH:/usr/local/bin/"
export PATH="$HOME/.node/bin:$PATH"
export PATH=/Users/jamieallen/Desktop/adt-bundle-mac-x86_64-20140702/sdk/platform-tools:/Users/jamieallen/Desktop/adt-bundle-mac-x86_64-20140702/sdk/tools:$PATH
export PATH
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

#   Change prompts
#   ------------------------------------------------------------
export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "
export PS2="| => "


#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
export BLOCKSIZE=1k


#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
  # export LSCOLORS=ExFxBxDxCxegedabagacad
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------

alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'
alias ga='git add .'						# shortcut to add all files
alias gac='git add . && git commit'			# shortcut to add all files then commit
alias pull='git pull'						# shortcut to pull
alias push='git push'						# shortcut to push
alias gb='git branch'						# shortcut to show branches
alias s='git status'						# shortcut to show git status
alias gc='git checkout'				  # shortcut to show git status



#   ---------------------------
#   6.  NETWORKING
#   ---------------------------

alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditional information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }


# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"

# Setting PATH for go
export GOPATH=$HOME/.golang
export PATH=$PATH:$GOPATH/bin

# destroy docker images
# ————————————————————
alias nukedocker="docker ps -aq | xargs docker stop -t 0 && docker ps -aq | xargs docker rm && docker images -aq | xargs docker rmi -f && docker volume ls | xargs docker volume rm"
