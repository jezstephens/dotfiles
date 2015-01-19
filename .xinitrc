# Source files in /etc/X11/xinit/xinitrc.d
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# root background/cursor
xsetroot -bg grey20 -fg black -mod 2 2 &
xsetroot -cursor_name left_ptr &

# Xresources
xrdb -merge ~/.Xresources

# keymap
setxkbmap -layout gb
setxkbmap -option ctrl:nocaps

# bell off
xset b off

# keyboard autorepeat
xset r rate 200 20

# dynamic monitor temperature
redshift-gtk -l 51.78:0.31 -t 5700:3600 -g 0.8 -b 1.0:0.4 -m randr &

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
ibus-daemon -drx &

eval `ssh-agent`

start-pulseaudio-x11
compton &
xbindkeys &

# source local configuration
[ -x ~/.xinitrc.local ] && . ~/.xinitrc.local

exec i3
