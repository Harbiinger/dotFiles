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

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# aliases
alias theo='banner theo'
alias ls='exa --icons'
alias project='cd /home/theo/Documents/UMons/BAC3/sdd2/project/'
alias rmclass='rm *.class'
alias ytbdl='python3 ~/Programmes-Python/youtubeDownloader/main.py'
alias hack.start='~/hollywood/bin/hollywood'
alias vim='gvim -v'
alias javaVersion='sudo alternatives --config java'
alias wifi='nmcli radio wifi'
alias rmx='rm *.x'
alias work='cd /home/theo/Documents/Workspace/'
alias umons='cd /home/theo/Documents/UMons/'

# editor
export VISUAL=vim;
export EDITOR=vim;

# bash tuning
#PS1='[\u@\h \W]\$'
PS1='\e[1;34m[\u]\e[0;32m<@\h \W>\$ \e[0m'
. "$HOME/.cargo/env"

# managed by bashquote
QUOTEFILE=corporate.txt
SYMBOL=$(head -n 1 $HOME/.config/bashquote/$QUOTEFILE)
QUOTE=$(tail -n+2 $HOME/.config/bashquote/$QUOTEFILE | shuf -n 1)
COLUMNS=$(tput cols)
printf "\n%*s\n\n" $(((${#QUOTE}+$COLUMNS)/2)) "$SYMBOL $QUOTE $SYMBOL"
