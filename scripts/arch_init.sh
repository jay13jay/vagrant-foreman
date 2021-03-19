# YAY package manager install

# Build and Install YAY Package Manager
# (cd /home/vagrant/yay && makepkg -si --noconfirm) # if using the jhax built foreman image, yay is already installed

echo "Ansible installed... running playbook /vagrant/scripts/site.yml"
ansible-playbook /vagrant/scripts/site.yml

echo "script completed\n"
