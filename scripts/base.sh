# Basic software install
# pacman -Syu --noconfirm # update the system to latest
echo "Updating Cache"
yum makecache

echo "Installing EPEL and Updpating Cache"
yum -y install epel-release
yum makecache

echo "Installing Ansible"
yum install -y ansible


echo "Ansible installed... running playbook /vagrant/scripts/site.yml"
ansible-playbook /vagrant/scripts/site.yml


echo "script completed\n"
