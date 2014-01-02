# root background/cursor
xsetroot -bg grey20 -fg black -mod 2 2 &
xsetroot -cursor_name left_ptr &

# Xresources
xrdb ~/.Xresources

# keymap
setxkbmap -layout gb
setxkbmap -option ctrl:nocaps

# bell off
xset b off

# keyboard autorepeat
xset r rate 200 20

# urxvt daemon
urxvtd -q -f -o

# dynamic monitor temperature
redshift -l 51.78:0.31 -t 5700:3600 -g 0.8 -m vidmode -v &

# hide pointer
unclutter -idle 1 -jitter 3 -root &

# TODO: move into box-specific file
# TrackPoint scrolling, disable TrackPad
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 8 1
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 8 2
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 8 200
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 8 6 7 4 5
xinput set-int-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 8 0

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
ibus-daemon -drx &

# SpiderOak &

exec dbus-launch ssh-agent i3
