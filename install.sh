aptitude update
aptitude install git -y
puppet module install puppetlabs/mysql
puppet module install puppetlabs/apache
puppet module install puppetlabs/vcsrepo
puppet module install willdurand/composer
puppet module install puppetlabs/apt
cd /etc/puppetlabs/code/environments/production/modules/
git clone https://github.com/gutocarvalho/puppet-ushahidi ushahidi
puppet apply -e "include ushahidi::platform"
cd /srv/ushahidi
/srv/ushahidi/bin/update
