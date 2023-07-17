#!/bin/bash
    xrandr --output eDP-1 --off
    xrandr --output HDMI-1 --mode 3840x2160
	xrandr --setmonitor HDMI-DEV-UP-LEFT 1920/0x1080/1+20+0 HDMI-1
	xrandr --setmonitor HDMI-DEV-DOWN-LEFT 1920/0x1080/1+20+1080 none
	xrandr --setmonitor HDMI-DEV-UP-RIGHT 1700/0x1080/1+1940+0 none
	xrandr --setmonitor HDMI-DEV-DOWN-RIGHT 1700/0x1080/1+1940+1080 none
