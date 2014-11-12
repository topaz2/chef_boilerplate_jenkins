#!/bin/bash -ex

export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt

if [ -w "Berksfile.lock" -a "$UPGRADE_DEPENDENCIES" = "true" ]
then
  bundle update
  berks update
else
  bundle install --full-index --jobs=`ohai cpu/total` --without development
  berks install -e development
fi
