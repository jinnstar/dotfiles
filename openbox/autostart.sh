# Run the system-wide support stuff
#. $GLOBALAUTOSTART

# Programs to launch at startup
# =============================
#vxprop -root -remove _NET_NUMBER_OF_DESKTOPS -remove _NET_DESKTOP_NAMES -remove _NET_CURRENT_DESKTOP
# Start session manager
lxsession &

# Start Bluetooth applet
# bluetooth-applet &

# Set-up keyboard maps and sytem tray switcher
# tip - quickly toggle between keyboard maps by holding both shift keys!
#setxkbmap -option grp:switch,grp:shifts_toggle,grp_led:scroll gb,us,de,fr &
#(sleep 1s && fbxkb) &
# ^^ note: if using the LiveCD, you can also change to a different
#          keyboard map by entering the terminal command:
# (sleep 2s && setxkbmap us) &
#          Where "xx" is the 2 letter country code.

# Launch clipboard manager
# (sleep 1s && parcellite) &

# Force openoffice.org to use GTK theme
# enable this if you install openoffice
export OOO_FORCE_DESKTOP=gnome

# Start volume control system tray applet
# (sleep 4s && gnome-volume-control-applet) &

# Launch panel
tint2 &

#claws-mail
claws-mail &

#power manager
xfce4-power-manager &

# Set desktop wallpaper
# nitrogen --restore &

# Launch xpad
# xpad --no-new &

# Thunar daemon
# thunar --daemon &

# Enable power management
# xscreensaver &

# Launch Conky
# conky -c .conkybrc &
# conky &

# numlockx
# numlockx on &

#eye candy
(sleep 5s && xcompmgr -cCfF -t-5 -l-5 -r4.2 -o.55 -D6) &

#nm-applet
# (sleep 5s && wicd-client) &

#volwheel
# (sleep 5s && volwheel) &
