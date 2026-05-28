#!/bin/sh

BAT="/sys/class/power_supply/axp288_fuel_gauge"
CHR="/sys/class/power_supply/axp288_charger"

[ ! -d "$BAT" ] && echo "" && exit 0

CAP=$(cat "$BAT/capacity")
ONL=$(cat "$CHR/online")

if [ "$ONL" = "1" ]; then
    ICON=""
elif [ "$CAP" -ge 80 ]; then
    ICON=""
elif [ "$CAP" -ge 60 ]; then
    ICON=""
elif [ "$CAP" -ge 40 ]; then
    ICON=""
elif [ "$CAP" -ge 20 ]; then
    ICON=""
else
    ICON=""
fi

echo "$ICON $CAP%"
