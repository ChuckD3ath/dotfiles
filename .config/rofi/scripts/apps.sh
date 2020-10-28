#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## browser : @adi1090x
## music : @adi1090x

rofi_command="rofi -theme themes/apps.rasi"

# Links
code=""
transmission=""
disks=""
timeshift=""
blueman=""
spotify=""


# Variable passed to rofi
options="$transmission\n$code\n$disks\n$timeshift\n$blueman\n$spotify"

chosen="$(echo -e "$options" | $rofi_command -p "Most Used" -dmenu -selected-row 0)"
case $chosen in
    $code)
        code &
        ;;
    $transmission)
        transmission-gtk &
        ;;
    $disks)
        gnome-disks &
        ;;
    $timeshift)
        timeshift-launcher &
        ;;
    $blueman)
        blueman-manager &
        ;;
    $spotify)
        spotify &
        ;;
esac

