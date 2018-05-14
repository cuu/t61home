
#/usr/X11R6/bin/xset b 10 4000 200
xset b off 
xset m 2 5 
xset s 600

#xmodmap -e "add control = Super_L"
xmodmap -e "clear mod4"
xmodmap -e "add mod1 = Super_L"
##disable x dpms (power saving)
#xset -dpms; xset s off  
xsetroot -solid black

#/usr/bin/feh --bg-center /home/cuu/Pictures/js_bach.jpg
#/usr/bin/feh --bg-center ~/Pictures/mjyouka.png
/usr/bin/feh --bg-center /home/guu/Wallpapers/193225.jpg
#/usr/bin/feh --bg-tile /home/guu/Wallpapers/wallhaven-444217.jpg 


export XIM_PROGRAM=fcitx
export XIM=fcitx
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=xim
export QT_IM_MODULE=fcitx


export VMWARE_USE_SHIPPED_GTK=force
# for vmware autofit 
export LC_ALL="en_US.UTF-8"

setxkbmap dvorak
#ibus-daemon -d -x -r &
#scim -d &

#sudo /usr/local/bin/fcitx  
/usr/bin/fcitx 

setxkbmap dvorak
## dvorak left hand 
#setxkbmap us dvorak-l
xscreensaver -no-splash &

#It's important to put xrandr command here, not just run after exec twm
#here it works, after exec twm, it'll have wired behaviors
#use xrandr , to show a list of connect displays

#AOC home
#xrandr --output LVDS1 --mode 1024x768 --output VGA1 --mode 1920x1080 --right-of LVDS1

#SGI
#xrandr --output LVDS1 --mode 1920x1200 --output VGA1 --mode 1600x1024 --right-of LVDS1
#xrandr --output LVDS1 --set "scaling mode" "Full aspect"
#xrandr --output LVDS1 --mode 1440x900  ### bigger ,friendly
#xrandr --output LVDS1 --mode 1920x1200 ### max resolution of t61p

#disable thinkpad t61 touchpad `xinput list` 
#xinput set-prop 10 "Device Enabled" 0 
bash 45custom_xrandr-settings 

exec twm
#exec /usr/bin/enlightenment_start
#exec startkde
