#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export LC_ALL="C"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTS-8

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi