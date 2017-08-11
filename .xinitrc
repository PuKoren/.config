#exec gnome-session
#source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd
xbindkeys
syndaemon -i 0.2 -t -R -d
compton -b
exec awesome
