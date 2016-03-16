#!/bin/sh

# Check If Zephir Has Been Installed

if [ -f /home/vagrant/.zephir ]
then
    echo "Zephir already installed."
    exit 0
fi

touch /home/vagrant/.zephir
#
# install upstream json-c
#
cd /tmp
git clone https://github.com/json-c/json-c.git
cd json-c
sh autogen.sh

./configure
make
make install
rm -fr /tmp/json-c

#
# install upstream zephir
#
cd /home/vagrant
git clone https://github.com/phalcon/zephir.git
cd zephir
./install

chown -R vagrant:vagrant /home/vagrant/zephir

