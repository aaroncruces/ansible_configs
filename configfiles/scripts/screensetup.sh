#!/bin/bash
my_dir="$(dirname "$0")"
if [[ $(xrandr | grep "HDMI-1 connected") == *"3840x2160"* ]]; then
my_dir="$(dirname "$0")"
bash "$my_dir/unsetworkspaces.sh"
bash "$my_dir/setdevelworkspaces.sh"
fi
