# Modified Commands
#alias diff='vimdiff'
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='vim'
alias ping='ping -c 5'
alias ..='cd ..'
alias ls='ls --color=auto'
alias update='yaourt -Syu --aur'
alias rm='rm -v'

# New Commands
alias da='date "+%A, %B %d, %Y [%T]"'
alias du1='du --max-depth=1'
alias hist='history | grep'      # requires an argument
alias openports='netstat --all --numeric --programs --inet --inet6'
alias la='ls -la'
alias :q='exit'
alias :wq='exit'
alias aur='cower -ddfu --target=/home/sauron/builds/'
alias alert='beep -f 5000 -l 60 -r 2'
alias configwget='time ./configure --enable-option-checking --disable-silent-rules --enable-dependency-tracking --with-ssl=openssl --without-included-regex CFLAGS="-g -O0"'
alias parallelconfig='configwget --enable-metalink --enable-threads=posix'
alias run='time ./runTest.py'
alias proj='cd ~/Programming/wget-gsoc/testenv'
alias resetproj='./bootstrap && configwget'

# Safety Features
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias sudo='sudo '
#alias pacman='pacsrv'
