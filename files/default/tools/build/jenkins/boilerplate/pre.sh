#!/bin/bash -ex

export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt

# Clear previous build files
rm -rf boilerplate-master master.zip

wget https://github.com/topaz2/boilerplate/archive/master.zip
unzip master.zip
cd boilerplate-master

if [ -w "Berksfile.lock" -a "$UPGRADE_DEPENDENCIES" = "true" ]
then
  bundle update
  berks update
else
  bundle install --full-index --jobs=`ohai cpu/total` --without development
  berks install -e development
fi

vagrant destroy --force
