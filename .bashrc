# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
export PATH=$PATH:/home/theo/bin
export PATH="$HOME/platform-tools:$PATH"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export VISUAL=vim;
export EDITOR=vim;

# User specific aliases and functions
alias theo='banner theo'
alias ls='exa'
alias project='cd /home/theo/Documents/UMons/BAC2/projet'
alias rmclass='rm *.class'
alias ytbdl='python3 ~/Programmes-Python/youtubeDownloader/main.py'
alias hack.start='~/hollywood/bin/hollywood'
alias tpsql='ssh bd1_05@mi-tpsql.umons.ac.be'
alias vim='gvim -v'
alias javaVersion='sudo alternatives --config java'
alias wifi='nmcli radio wifi'
alias rmx='rm *.x'

# bash tuning
#PS1='[\u@\h \W]\$'
PS1='\e[1;34m[\u]\e[0;32m<@\h \W>\$ \e[0m'

# gradle install
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/theo/.sdkman"
[[ -s "/home/theo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/theo/.sdkman/bin/sdkman-init.sh"
