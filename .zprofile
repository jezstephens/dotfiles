for f in ~/.zprofile.d/*.zsh; do
  source $f
done

# Auto-start Xorg on tty1
if [[ -z "$DISPLAY" ]] && [[ "$(tty)" == /dev/tty1 ]]; then
  while true; do
    exec startx
    sleep 10
  done
fi
