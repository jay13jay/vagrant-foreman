# Basic software install
echo "Updating Cache"
yum makecache

echo "Installing EPEL and Updpating Cache"
# yum -y install epel-release
rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum makecache

echo "Installing Ansible"
yum install -y ansible


echo "Ansible installed... running playbook /vagrant/scripts/site.yml"
ansible-playbook /vagrant/scripts/site.yml


echo "script completed\n"
