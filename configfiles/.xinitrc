# Theme for xterm and others
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Theme for Kitty
scripts/xres_to_kitty.py <.Xresources > /tmp/kitty.xresources.conf

# split screen for use in a 4k tv (todo: generalize)
bash ~/scripts/screensetup.sh

# wallpaper across all screens (on 4k tv)
feh --bg-max --randomize --no-xinerama ~/Pictures/wallpapers/*

# fix gtk slowness
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

# picom for transparency
picom &

# load wm
exec i3


