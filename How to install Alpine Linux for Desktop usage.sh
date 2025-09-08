# Please read this file first. 
# Do not execute :) 
# Some parts you can execute using terminal!


# The Alpine Linux installation ISO uses root as the default user and an empty password. In order to login, just enter the username root and press return.


# [Initial password for root not exists, just press enter. There is no root password for the first time in Alpine Linux.]

# [You can setup root and user passwords later during the setup process.]

# [type = root]
# [login as root for the first time] 

# [You can use su command to gain root access]

su
setup-alpine


# us
# us
# localhost
# eth0
# UTC
# none
# none
# 1
# none
# busybox
# sda
# sys
# y



reboot

# [remove installation DVD or Flash device]

# [type = root]

# [login as root for the first time]



apk add nano doas 




nano /etc/apk/repositories

# [   Please remove # before all mirorr paths, and save the file  (ctrl+O, ctrl+X)   ]

/etc/apk/repositories must look like this (or you can add these lines to the existing ones) = 

http://dl-cdn.alpinelinux.org/alpine/edge/main
http://dl-cdn.alpinelinux.org/alpine/edge/community
http://dl-cdn.alpinelinux.org/alpine/edge/testing




apk update

adduser joe

adduser joe wheel

nano /etc/doas.d/doas.conf

# Add the following line and save the file  (ctrl+O, ctrl+X):

permit persist :wheel


apk update

setup-xorg-base

apk add elogind polkit-elogind

adduser root video
adduser root input
adduser root games

adduser joe video
adduser joe input
adduser joe games


apk add xfce4 xfce4-terminal xfce4-screensaver lightdm-gtk-greeter dbus

rc-service dbus start

rc-update add dbus

rc-update add udev

rc-update add lightdm

rc-service lightdm start


# [for the next command you must be simple user, for that type exit command to exit from root]

exit

# [if you have previously created user  ClintEastwood, than type user ClintEastwood, and password for that user]

# [now you can see $ sign]


# $ 
echo "exec startxfce4" >> ~/.xinitrc


# [that  echo command must be deployed for every user]

su

reboot


startx

# [instead of sudo you can use doas command to start commands as root while you are login as simple user]

# Congratulations, you have successfully installed Alpine Linux.
# Now it remains to take care of the sound.


# https://wiki.alpinelinux.org/wiki/ALSA
# Alpine Linux Sound working if you try this:



apk add pulseaudio htop neofetch xdg-utils

apk add xfce4-pulseaudio-plugin

apk add pavucontrol


apk add xfce4-xkb-plugin
reboot

# ------------

# BTW, some users hate pulseaudio, they like pipewire instead:

apk add pavucontrol pipewire wireplumber pipewire-pulse

# But beware, you can use only one, choose between pulseaudio or pipewire, do not use both at the same time!


