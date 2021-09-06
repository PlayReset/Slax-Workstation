#!/bin/bash
## Changing Wallpaper ##
cd ~/ &&
cd /usr/share/wallpapers/ &&
mv slax_wallpaper.jpg slax_wallpaper_standart.jpg &&
cd /usr/share/images/fluxbox/ &&
cp debian-dark.png /usr/share/wallpapers/slax_wallpaper.jpg &&

## Instaling Code ##
cd ~/ &&
rm -Rf /opt/vscode/* ; rm -Rf /opt/vscode/code ; rm -Rf /usr/share/applications/vscode.desktop ;
wget "https://go.microsoft.com/fwlink/?LinkID=620885" -O vscode.tar.gz &&
tar -vzxf vscode.tar.gz -C /opt/ &&
mv /opt/VSCode*/ /opt/vscode/ &&
ln -sf /opt/vscode/code /usr/bin/code &&
apt install libgtk-3-0 -y &&

## Instaling Git ##
apt install git -y &&

## Changing Keyboard Layout ##
setxkbmap -model abnt2 -layout br -variant abnt2 &&
cd /root/.fluxbox/ &&
sed -i '15 i setxkbmap -model abnt2 -layout br -variant abnt2' startup &&
sed -i '15 i # set keyboard layout to abnt2' startup &&
sed -i '15 i \ ' startup &&
cd ~/ ; reboot