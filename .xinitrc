#exec gnome-session
#source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xbindkeys
syndaemon -i 0.2 -t -R -d
exec awesome
