#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Auto detect hardware
export WLAN="$(ls /sys/class/net | grep wlp)"
export ETHERNET="$(ls /sys/class/net | grep enp)"
export THERMAL="$(grep -Rl "x86_pkg_temp" /sys/class/thermal/thermal_zone*/type | tr -d -c 0-9)"

# # Launch Polybar, using default config location ~/.config/polybar/config
# for m in $(polybar --list-monitors | cut -d":" -f1); do
#     MONITOR=$m polybar --reload laptopbar &
# done

if [ $(autorandr --current) == "thinkdock" ]
then

    polybar extbar1 & polybar extbar2 &
    # bspc monitor DP2-2 -d I II III IV V VI VII
    bspc monitor DP2-2 -d 1 2 3 4 5 6 7
    # bspc monitor DP2-1 -d VIII IX X
    bspc monitor DP2-1 -d 8 9 0
    # bspc monitor DP2-2 -s DP2-1

else
    polybar laptopbar &
    bspc monitor -d 1 2 3 4 5 6 7 8 9 0
fi

bspc desktop -f 1
