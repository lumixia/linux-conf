# some more ls aliases
alias ll='ls -alh'
alias la='ls -A'
#alias l='ls -CF'
alias rm='rm -I'
alias up='uptime'
alias update='notify sudo apt-get update'
alias upgrade='sudo apt-get update; notify sudo apt-get upgrade'
alias c='clear'
alias free='free -m'
alias df='df -h'
alias tem='acpi -V'

#alias gmbox='~/.local/bin/gmbox/gmbox.py &'
alias fixmusic='mid3iconv -e GBK *.mp3'
alias myip='curl ifconfig.me'

#pw:674302633
alias fuckssh='ssh -qTfnN -D 7070 -p35 lumixia@200.46.208.172'
#alias fuckssh='plink -ssh -pw 674302633 -C -N -P 35 -D 7070 -l lumixia 200.46.208.17'

#alias qmake-new='/opt/qtsdk-2010.04/qt/bin/qmake'
alias qmake-i386='/usr/local/Trolltech/QtEmbedded-4.5.0-i386/bin/qmake'
alias qmake-arm='/usr/local/Trolltech/QtEmbedded-4.5.0-arm-webkit-4.7.0/bin/qmake'
alias jkqtcreater='/opt/necessitas/QtCreator/bin/necessitas '
alias qvfb='/usr/local/Trolltech/qvfb &'
alias hisi_android='adb connect 192.168.10.224:5555 ; adb -s 192.168.10.224:5555 shell'
