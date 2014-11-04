#!/bin/bash -ex

# Add chefdk path for the issue below
# @see https://github.com/berkshelf/vagrant-berkshelf/issues/212
export PATH='/opt/chefdk/bin:'$PATH

kitchen test --destroy=always -c `ohai cpu/total`
