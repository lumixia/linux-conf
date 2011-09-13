
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
export HISTTIMEFORMAT='%F %T '
export HISTCONTROL=erasedups
M9=M9W1B00BKAVR0C0362
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
PS1='`a=$?;if [ $a -ne 0 ]; then a="  "$a; echo -ne "\[\e[s\e[1A\e[$((COLUMNS-2))G\e[31m\e[1;41m${a:(-3)}\e[u\]\[\e[0m\e[7m\e[2m\]"; fi`\[\e[1;32m\]\u@\h:\[\e[0m\e[1;34m\]\w\[\e[1;34m\]\$ \[\e[0m\]'

#just say i love
function tiamoc (){
    echo "Ti amo C *_^"
}
#mkdir and cd into it
mkcd(){
    mkdir -p "$@" && eval cd "\"\$$#\"";
}
#grep things from ps
#function psgrep (){
#  ps aux | grep "$1" | grep -v ‘grep’
#}
#function psterm (){
#    [ ${#} -eq 0 ] && echo "usage: $FUNCNAME STRING" && return 0
#    local pid
#    pid=$(ps ax | grep "$1" | grep -v grep | awk ‘{ print $1 }’)
#    echo -e "terminating ‘$1’ / process(es):\n$pid"
#    kill -SIGTERM $pid
#}
### chsdir start ###
#. $HOME/.dir_bin/chs_completion
#PATH=$PATH:$HOME/.dir_bin/:$HOME/.bin/
#export CHSDIR="{'n':'l'}"
### chsdir finish. ###

##For notify##
complete -o filenames -F _root_command notify
#wiki look-up word
wiki()
{
    dig +short txt $1.wp.dg.cx;
}

man()
{
    /usr/bin/man $@ || (help $@ 2> /dev/null && help $@ | less)
}

# dir bookmark
source ~/.local/bin/bashmarks.sh

# define $PATH for bash ENV
#export CDPATH=.:~:/home/kaka/ProjectA
#export CDPATH=/home/kaka/ProjectA
#export PATH="$PATH:/sbin:/usr/local/arm/bin:/usr/local/bin:/usr/local"
PATH=$PATH:$HOME/.local/bin
# export android sdk
export PATH=$PATH:/opt/necessitas/android-sdk-linux_x86/tools
export PATH=$PATH:/opt/necessitas/android-sdk-linux_x86/platform-tools
NDK=/opt/necessitas/android-ndk-r6
export PATH=$PATH:$NDK

