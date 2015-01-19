for f in ~/.zprofile.d/*.zsh; do
  source $f
done

# Auto-start Xorg on tty1
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
