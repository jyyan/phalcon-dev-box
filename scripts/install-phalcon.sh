#!/bin/sh

# Check If phalcon Has Been Installed

if [ -f /home/vagrant/.phalcon ]
then
    echo "Phalcon already installed."
    exit 0
fi

touch /home/vagrant/.phalcon
#
# install upstream phalcon from ppa
#
apt-add-repository -y ppa:phalcon/stable
apt-get update
apt-get -f -y install
apt-get install -y php5-phalcon

# restart php5-fpm
/etc/init.d/php5-fpm restart

#
# phalcon developer tools
#
mkdir /home/vagrant/phalcon-devtools
cd /home/vagrant/phalcon-devtools
echo '{ "require": { "phalcon/devtools": "dev-master" } }' > composer.json
/home/vagrant/bin/composer install

ln -s /home/vagrant/phalcon-devtools/vendor/phalcon/devtools/phalcon.php /home/vagrant/bin/phalcon

chown -R vagrant:vagrant /home/vagrant/phalcon-devtools
chown -R vagrant:vagrant /home/vagrant/bin
