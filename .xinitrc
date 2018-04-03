#exec gnome-session
#source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd

# gnome keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xbindkeys
syndaemon -i 0.2 -t -R -d
compton -b
export GTK_IM_MODULE='uim'
export QT_IM_MODULE='uim'
uim-xim &
uim-toolbar-qt4 &
exec awesome
