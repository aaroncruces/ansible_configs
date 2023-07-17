#!/usr/bin/bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar common-bar 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown
#echo "Bars launched..."


#for m in $(polybar --list-monitors | cut -d":" -f1); do
#    MONITOR=$m polybar --reload bar1 &
#done


launchbaronmonitor(){
  CURRENTMONITOR=$1
  CURRENTBAR=$2
  if [[ $(xrandr --listactivemonitors) == *"$CURRENTMONITOR"* ]]; then
    MONITOR=$CURRENTMONITOR MONWIDTH=$(($(xrandr --listactivemonitors  | grep $CURRENTMONITOR | sed 's/.\+\: .\+ \([0-9]\+\)\/.\+/\1/')-0)) polybar --reload $CURRENTBAR & disown
  fi
}

launchbaronmonitor "HDMI-DEV-UP-LEFT" "hdmi-dev-up-left-bar"
launchbaronmonitor "HDMI-DEV-DOWN-LEFT" "hdmi-dev-down-left-bar"
launchbaronmonitor "HDMI-DEV-UP-RIGHT" "hdmi-dev-up-right-bar"
launchbaronmonitor "HDMI-DEV-DOWN-RIGHT" "hdmi-dev-down-right-bar"

launchbaronmonitor "eDP-1" "hdmi-dev-down-left-bar"
