# Run the system-wide support stuff
#. $GLOBALAUTOSTART

# Programs to launch at startup
# =============================

# Start session manager
lxsession &

# Start Bluetooth applet
#bluetooth-applet &

# Set-up keyboard maps and sytem tray switcher
# tip - quickly toggle between keyboard maps by holding both shift keys!
#setxkbmap -option grp:switch,grp:shifts_toggle,grp_led:scroll gb,us,de,fr &
#(sleep 1s && fbxkb) &
# ^^ note: if using the LiveCD, you can also change to a different
#          keyboard map by entering the terminal command:
(sleep 1s && setxkbmap us) &
#          Where "xx" is the 2 letter country code.

# Force openoffice.org to use GTK theme
# Launch clipboard manager
#(sleep 1s && parcellite) &

# Uncomment to enable system updates at boot
#(sleep 180s && system-update) &

# Check for restricted hardware
#(sleep 60s && jockey-gtk --check) &

# Enable Eyecandy - off by default
# see "/usr/bin/crunchbang/xcompmgr-crunchbang" for more info
(sleep 2s && xcompmgr-crunchbang --startstop ) &

# enable this if you install openoffice
export OOO_FORCE_DESKTOP=gnome

# Start volume control system tray applet
(sleep 4s && volwheel) &

# Set desktop wallpaper
nitrogen --restore &

# Start screensaver deamon
gnome-screensaver &

# Launch panel
tint2 &

# Launch gnote
gnote &

# wicd
# wicd-client &

# Thunar daemon
thunar --daemon &

# Enable power management
gnome-power-manager &

# Launch Conky
(sleep 2s && conky -c .conkyrc -q ) &
(sleep 3s && conky -c .conkyWrc -q ) &

# Mutt
terminator --geometry 900x700+20+30 --command=mutt &
