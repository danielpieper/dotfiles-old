dbus-update-activation-environment --all
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xset +fp ~/.fonts
xset fp rehash
# wmname LG3D

export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dawt.useSystemAAFontSettings=gasp'

systemctl --user import-environment DISPLAY

# BEGIN desktop
#export GDK_SCALE=1.7
#export GDK_DPI_SCALE=0.7
#export QT_AUTO_SCREEN_SCALE_FACTOR=1
# END desktop
udiskie --tray --use-udisks2 &

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

export DESKTOP_SESSION=i3
exec i3
