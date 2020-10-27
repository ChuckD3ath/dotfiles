#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$ '
# PS1="[\w] -> "
# export PS1="\[\e[1;34m\]\n\w\n\[\e[32m\]→ \[\e[0m\]" 
# export PS1="\[\e[37m\]\n╭╴╴╴ \[\e[33m\]\W\n\[\e[37m\]╰╴> \[\e[36m\]" 
PS1='  \[\e[1m\]\u \[\e[38;5;12;1m\]\w\[\e[m\]
     \[\e[38;5;9;1m\]└───────➤ \[\e[m\]'

# random
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias df='df -h'                                 # human-readable sizes
alias free='free -m'                             # show sizes in MB

# pacman and yay
alias pacsyu='sudo pacman -Syu'                  # update only standard pkgs
alias yaysua="yay -Sua --noconfirm"              # update only AUR pkgs
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias status='git status'
alias tag='git tag'
alias newtag='git tag -a'


#########################
# pywal
########################
# # Import colorscheme from 'wal' asynchronously
# # &   # Run the process in the background.
# # ( ) # Hide shell job control messages.
# (cat ~/.cache/wal/sequences &)

# # Alternative (blocks terminal for 0-3ms)
# cat ~/.cache/wal/sequences

# # To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh


# [ $DISPLAY ] && neofetch
pfetch
