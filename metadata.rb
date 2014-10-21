name 'boilerplate_jenkins'
maintainer 'topaz2'
maintainer_email 'topaz2@m0n0m0n0.com'
license 'GPL v3'
description 'Installs/Configures boilerplate_jenkins'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.1'

depends 'apt'
depends 'apt-repo'
depends 'jenkins'

supports 'debian'
supports 'ubuntu'
