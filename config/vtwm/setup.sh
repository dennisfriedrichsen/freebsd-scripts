#! /bin/csh

cp -pRvf .vtwmrc ~/
cp -pRvf .xmodmaprc ~/
cp -pRvf .xsession ~/
cp -pRvf .Xresources ~/
cp -pRvf bin ~/

cp -pRvf ../.cshrc ~/

sudo tzsetup -s America/Chicago

echo "Don't forget to change hostname!!!"
