# Basic software install
echo "Installing Devel Packages"
pacman -Syu --noconfirm
pacman -S --needed git base-devel --noconfirm

echo "Installing Ansible"
pacman -S ansible --noconfirm

echo "Cloning Yay Repo"
if [ -d /home/vagrant/yay ]; then
  echo "Dir exists"
else
  git clone https://aur.archlinux.org/yay.git /home/vagrant/yay
  chown -R vagrant:vagrant /home/vagrant/*
fi

echo "Script Completed\n"
