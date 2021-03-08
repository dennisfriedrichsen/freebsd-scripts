#! /bin/csh

sudo echo "proc  /proc   procfs  rw  0   0" >> /etc/fstab
sudo sysrc dbus_enable=YES
sudo sysrc hald_enable=YES
sudo sysrc sddm_enable=YES

cp -pRvf ../.cshrc ~/
