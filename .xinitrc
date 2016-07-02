#exec gnome-session
#source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
nvidia-settings --load-config-only & exec awesome
