#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

(sleep 2s && setxkbmap us) &
numlockx on &
(sleep 1s && parcellite) &
nitrogen --restore &
thunar --daemon &
xscreensaver -nosplash &
(sleep 2s && conky -c .conkybrc) &
(sleep 2s && conky) &
(sleep 2s && volwheel) &

# exec ion
# exec jwm
# exec wmaker
# exec startkde
# exec icewm
# exec blackbox
# exec gnome-session
# exec startfluxbox
# exec startxfce4
# exec xfce4-session
# exec xmonad
exec openbox-session
# exec awesome

