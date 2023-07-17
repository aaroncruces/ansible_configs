#!/bin/bash
my_dir="$(dirname "$0")"
bash "$my_dir/unsetworkspaces.sh"
if [[ $(xrandr | grep HDMI) == *" connected"* ]]; then
	# if notebook hidden
	xrandr --output eDP --off
	# else: notebook at the side
	#xrandr --output eDP --mode 1366x768
	#xrandr --output eDP --pos 3840x1392
	xrandr --output HDMI-A-0 --mode 3840x2160
	xrandr --setmonitor HDMI-A-0-UP 1920/0x1080/1+20+0 HDMI-A-0
	xrandr --setmonitor HDMI-A-0-DOWN 1920/0x1080/1+20+1080 none
	xrandr --setmonitor HDMI-A-0-READER 1215/0x2160/1+1940+0 none
	xrandr --setmonitor HDMI-A-0-ANEX1 665/0x540/1+3155+0 none
	xrandr --setmonitor HDMI-A-0-ANEX2 665/0x540/1+3155+540 none
	xrandr --setmonitor HDMI-A-0-ANEX3 665/0x540/1+3155+1080 none
	xrandr --setmonitor HDMI-A-0-ANEX4 665/0x540/1+3155+1620 none
else
	xrandr --output eDP --mode 1366x768
fi
